package handler

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net"
	"net/http"
	"os"
	"strconv"
	"time"

	"github.com/amalfra/etag"
	"github.com/go-redis/redis/v8"
	"github.com/gofiber/fiber/v2"
	"github.com/streadway/amqp"
	"github.com/tidwall/gjson"
	"github.com/valyala/fasthttp"
)

var ctx = context.Background()
var amqp_connection *amqp.Connection
var amqp_channel *amqp.Channel
var queue amqp.Queue = amqp.Queue{}
var is_connection = false
var has_channel = false
var has_queue = false

var redis_master_host = os.Getenv("REDIS_MASTER_HOST")
var redis_master_port = os.Getenv("REDIS_MASTER_PORT")
var redis_master_password = os.Getenv("REDIS_MASTER_PASSWORD")
var redis_slave_host = os.Getenv("REDIS_SLAVE_HOST")
var redis_slave_port = os.Getenv("REDIS_SLAVE_PORT")
var redis_slave_password = os.Getenv("REDIS_SLAVE_PASSWORD")
var queue_name = os.Getenv("QUEUE_NAME")
var exchange_name = os.Getenv("EXCHANGE_NAME")
var rabbit_mq = os.Getenv("RABBIT_MQ")
var connection_timeout = os.Getenv("CONNECTION_TIMEOUT")
var redis_database = getEnv("REDIS_DATABASE", "0")
var go_pixel_log = os.Getenv("GO_PIXEL_LOG")

//var appurl = os.Getenv("CUSTOM_DOMAIN_URL_1")
//var fronturl = os.Getenv("FRONT_END_SERVICE")
var apiurl = os.Getenv("PHP_BACKEND_SERVICE")

var instagram = os.Getenv("RAPID_INSTAGRAM")
var facebook = os.Getenv("RAPID_FACEBOOK")
var youtube = os.Getenv("RAPID_YOUTUBE")
var twitter = os.Getenv("RAPID_TWITTER")
var tiktok = os.Getenv("RAPID_TIKTOK")
var rapid_key = os.Getenv("RAPID_KEY")

func getEnv(key, defaultValue string) string {
	value := os.Getenv(key)
	if len(value) == 0 {
		return defaultValue
	}
	return value
}

type message struct {
	Data string
}

type mdata struct {
	id            string
	shortcode     string
	is_video      string
	thumbnail_src string
}

func InitAMQP() {
	fmt.Println("Init AMQP RABBIT")
	//fmt.Println(rabbit_mq)
	fmt.Println("channel")
	fmt.Println(amqp_channel)
	fmt.Println(connection_timeout)

	conn, err := amqp.DialConfig(rabbit_mq, amqp.Config{
		Dial: func(network, addr string) (net.Conn, error) {
			conn_timeout, _ := strconv.ParseInt(connection_timeout, 10, 32)
			conn_timeout = conn_timeout * 365 * 24 * 60
			return net.DialTimeout(network, addr, time.Duration(conn_timeout)*time.Second)
		},
	})
	failOnError(err, "Failed to connect to RabbitMQ")
	defer fmt.Println("conenction close")
	// defer conn.Close()

	ch, err := conn.Channel()
	failOnError(err, "Failed to open a channel")
	defer fmt.Println("channel close")
	// defer ch.Close()

	if err == nil {
		amqp_channel = ch
		amqp_connection = conn
		is_connection = true
	}
}

func get_channel() *amqp.Channel {
	return amqp_channel
}

func GetTest(c *fiber.Ctx) error {

	message := fmt.Sprintf("Success")
	return c.SendString(message)

}

func FastGet(url string, c *fiber.Ctx) (*fasthttp.Response, error) {
	req := fasthttp.AcquireRequest()
	resp := fasthttp.AcquireResponse()
	defer func() {
		fasthttp.ReleaseResponse(resp)
		fasthttp.ReleaseRequest(req)
	}()

	req.SetRequestURI(url)
	req.Header.SetUserAgent(fiber.HeaderUserAgent)
	req.Header.SetUserAgent(string(c.Context().UserAgent()))
	req.Header.SetMethod("GET")

	timeOut := 3 * time.Second
	var err = fasthttp.DoTimeout(req, resp, timeOut)

	if err != nil {
		log.Println("==fastget error==")
		fmt.Println(err)
		return nil, err
	}

	out := fasthttp.AcquireResponse()
	resp.CopyTo(out)

	return out, nil
}

func FastPost(url string, referrer string) (*fasthttp.Response, error) {
	req := fasthttp.AcquireRequest()
	resp := fasthttp.AcquireResponse()
	defer func() {
		fasthttp.ReleaseResponse(resp)
		fasthttp.ReleaseRequest(req)
	}()
	req.SetRequestURI(url)
	req.Header.Add("Referer", referrer)
	req.Header.SetMethod("POST")

	timeOut := 3 * time.Second
	var err = fasthttp.DoTimeout(req, resp, timeOut)

	if err != nil {
		fmt.Println(err)
		return nil, err
	}

	out := fasthttp.AcquireResponse()
	resp.CopyTo(out)

	return out, nil
}

func failOnError(err error, msg string) {
	if err != nil {
		log.Fatalf("%s: %s", msg, err)
	}
}

type databody struct {
	key     string
	types   string
	payload struct {
		redirectTo string
		htmlData   string
	}
}

func RabbitRun(payload string, queuename string) (string, error) {

	if !is_connection {

		InitAMQP()
	}

	if amqp_connection.IsClosed() {
		fmt.Println("is close")
		fmt.Println(amqp_connection.IsClosed())
		is_connection = false
		InitAMQP()
	}

	if !amqp_connection.IsClosed() {

		queue, qerr := amqp_channel.QueueDeclare(queuename, true, false, false, false, nil)
		if qerr != nil {
			log.Println(qerr, "Could not declare `add` queue")
		}
		//		payload := string(c.Request().Body())
		log.Println("---databody----")
		log.Println("---payload----")
		log.Println("from PostShort:" + payload)

		//log.Println(payload)
		// 	log.Println(key)
		//payload := string(c.Request().Body())
		m := message{payload}
		b, _ := json.Marshal(m)
		err := amqp_channel.Publish(
			exchange_name, // exchange
			queue.Name,    // routing key
			false,         // mandatory
			false,         // immediate
			amqp.Publishing{
				ContentType: "text/plain",
				Body:        []byte(b),
			})
		if err != nil {
			return "error", err
		}
		is_log, _ := strconv.ParseBool(go_pixel_log)
		if is_log {
			//log.Printf(" [x] Sent %s", b)
			log.Printf("Exchange name %s", exchange_name)
		} else {
			log.Printf(" [x] Sent Data")
		}

	}
	return "success", nil
}
func Pong() {
	rdb := redis.NewClient(&redis.Options{
		Addr:     "db:6379",
		Password: "",
		DB:       0,
	})

	pong, err := rdb.Ping(ctx).Result()
	fmt.Println(pong, err)
}
func Config(c *fiber.Ctx) error {

	log.Println("---databody----")
	payload := (gjson.Get(string(c.Request().Body()), "host")).String()
	log.Println(payload)

	f, err := os.OpenFile("/etc/caddy/config/Caddyfile", os.O_APPEND|os.O_WRONLY, 0644)
	if err != nil {
		panic(err)
	}
	defer f.Close()
	host := "\n " + payload + " {\n reverse_proxy go:9090\n tls internal\n }\n"

	if _, err = f.WriteString(host); err != nil {
		panic(err)
	}

	// input, err := ioutil.OpenFile("/etc/caddy/config/Caddyfile")
	// if err != nil {
	// 	log.Fatalln(err)
	// }

	//	lines := strings.Split(string(input), "\n")

	// output := strings.Join(lines, "is "+host+"\n")
	// err = ioutil.WriteFile("/etc/caddy/config/Caddyfile", []byte(output), 0644)
	// if err != nil {
	// 	log.Fatalln(err)
	// }

	return c.SendString(host)
}
func Root(c *fiber.Ctx) error {

	c.Append("Cache-Control", "public, max-age=300")
	c.Append("content-type", "text/javascript")
	c.Append("Accept-Encoding", "gzip, deflate, brotli")
	c.Append("Expires", time.Now().AddDate(0, 0, 1).Format(http.TimeFormat))

	key := c.BaseURL() + "/"
	return c.SendString(key)
}
func GetQr(c *fiber.Ctx) error {

	//c.Append("content-type", "image/png")

	key := c.Params("key")
	qr := c.Params(("qr")) //c.BaseURL() + "/"

	url := apiurl + "/api/wrap/" + key + "/" + qr

	//fmt.Println(url)
	resp, resp_err := FastGet(url, c) //,string(c.Request().Header.Referer()))
	//log.Println(string(resp.Header.ContentType()))
	if resp_err == nil {
		log.Println(resp_err)
	}

	return c.Send((resp.Body()))
}
func GetShort(c *fiber.Ctx) error {
	//log.Println("==============================================")

	// InitAMQP()
	c.Append("Cache-Control", "public, max-age=300")
	c.Append("content-type", "text/javascript")
	c.Append("Accept-Encoding", "gzip, deflate, brotli")
	c.Append("Expires", time.Now().AddDate(0, 0, 1).Format(http.TimeFormat))

	key := c.BaseURL() + "/" + c.Params("key")

	etagKey := key + "_etag"
	db, _ := strconv.Atoi(redis_database)
	rdbWrite := redis.NewClient(&redis.Options{
		Addr:     redis_master_host + ":" + redis_master_port,
		Password: redis_master_password,
		DB:       db,
	})

	// //fmt.Println("--- end pong ")
	rdbRead := redis.NewClient(&redis.Options{
		Addr:     redis_slave_host + ":" + redis_slave_port,
		Password: redis_slave_password,
		DB:       db,
	})
	//short, err := rdbRead.Get(ctx, key).Result()
	//fmt.Println(key)

	short, err := rdbRead.Get(ctx, key).Result()
	if err != nil {
		fmt.Println("383:" + redis_master_host + redis_database + redis_master_password)
		//return c.SendString(short)
	}
	//log.Println(string(short))
	log.Println("387:" + short)
	//htmlData := gjson.Get(short, "payload.htmlData").String()
	//fmt.Println("htmldata:"+htmlData)
	etagShort, errEtag := rdbRead.Get(ctx, etagKey).Result()
	reqEtag := string(c.Request().Header.Peek("If-None-Match"))

	fmt.Println("If non match : "+reqEtag, etagShort)

	if errEtag != redis.Nil && err != redis.Nil {
		if etagShort == reqEtag {
			fmt.Println("is etag match")
			return c.SendStatus(304)
		}
	}

	if err == redis.Nil || len(short) == 0 {
		log.Println("redis.nil or short not found in redis")
		//url := "http://app:80/api/wrap/" + c.Params("key") + "/"
		url := apiurl + "/api/wrap/" + c.Params("key") + "/"

		resp, resp_err := FastGet(url, c) //,string(c.Request().Header.Referer()))

		if resp_err == nil {
			//m := minify.New()
			//m.AddFunc("text/javascript", js.Minify)
			// pixel_resp, _ := m.String("text/javascript", string(resp.Body()))
			fmt.Println("url:" + url + ",resp:" + string(resp.Body()))

			data := (gjson.Get(string(resp.Body()), "data")).String()
			htmlData := gjson.Get(data, "htmlData").String()
			println("htmldata:" + htmlData)
			if htmlData == "" {
				//data := (gjson.Get(string(resp.Body()), "data")).String()
				key_err := rdbWrite.Set(ctx, key, string(`{"htmlData":`+string(resp.Body())+`}`), 0).Err()
				if key_err != nil {
					log.Println(key_err)
				}
			}

			direct_url := (gjson.Get(string(data), "url")).String()
			log.Println("direct-respnoerror:" + direct_url)
			if direct_url != "" {

				eTag := etag.Generate(short, false)
				etag_err := rdbWrite.Set(ctx, etagKey, eTag, 0).Err()

				if etag_err != nil {
					fmt.Println(etag_err)
				}
				c.Append("ETag", eTag)
				c.Redirect(direct_url)
			} else {

				eTag := etag.Generate(data, false)
				etag_err := rdbWrite.Set(ctx, etagKey, eTag, 0).Err()
				if etag_err != nil {
					fmt.Println(etag_err)
				}
				c.Append("ETag", eTag)
				c.Set(fiber.HeaderContentType, fiber.MIMETextHTML)
				return c.SendString(data)
			}

		} else {
			log.Println("==============================================")
			log.Println(resp_err)
			log.Println("==============================================")
		}

	} else if err != nil {
		log.Println(err)
	} else {

		htmlData := gjson.Get(short, "payload.htmlData").String()
		if htmlData == "" {
			url := apiurl + "/api/wrap/" + c.Params("key")
			resp, resp_err := FastGet(url, c) //,string(c.Request().Header.Referer()))

			if resp_err == nil {
				//m := minify.New()
				//m.AddFunc("text/javascript", js.Minify)
				// pixel_resp, _ := m.String("text/javascript", string(resp.Body()))

				direct_url := (gjson.Get(string(resp.Body()), "data.url")).String()

				log.Println(" resp_err - direct:" + (gjson.Get(string(resp.Body()), "data.url")).String() + direct_url)
				if direct_url != "" {

					eTag := etag.Generate(short, false)
					etag_err := rdbWrite.Set(ctx, etagKey, eTag, 0).Err()

					if etag_err != nil {
						fmt.Println(etag_err)
					}
					c.Append("ETag", eTag)
					//return c.SendString(string(resp.Body()))
					return c.Redirect(direct_url)
				} else {
					//update htmldata redis & update etag

					//	log.Println(resp)
					eTag := etag.Generate(string(resp.Body()), false)
					etag_err := rdbWrite.Set(ctx, etagKey, eTag, 0).Err()

					if etag_err != nil {
						fmt.Println(etag_err)
					}
					c.Append("ETag", eTag)
					c.Set(fiber.HeaderContentType, fiber.MIMETextHTML)
					return c.SendString((gjson.Get(string(resp.Body()), "data")).String())
					//return c.SendString(string(resp.Body()))
				}
			} else {
				log.Println("==============================================")
				log.Println(resp_err)
				log.Println("==============================================")
				return c.SendString("internal resp error")
			}

		} else {
			key := c.Params("key")
			//key_err := rdbWrite.Set(ctx, key, string(`{"key":"`+string(key)+`,"htmlData":`+string(resp.Body())+`}`), 0).Err()

			RabbitRun(`{"key":"`+string(key)+`"}`, "Stat")

			log.Println("get data from redis")
			eTag := etag.Generate(short, false)
			redis_err := rdbWrite.Set(ctx, etagKey, eTag, 0).Err()

			if redis_err != nil {
				log.Println(redis_err)
			}
			direct_url := (gjson.Get(htmlData, "url")).String()
			html := (gjson.Get(htmlData, "data")).String()

			c.Append("ETag", eTag)
			if direct_url != "" {
				return c.Redirect(direct_url)
			}
			c.Set(fiber.HeaderContentType, fiber.MIMETextHTML)
			if html != "" {
				return c.SendString(html)
			} else {
				return c.SendString(htmlData)
			}
		}

	}
	return c.SendString("404 not found")
}

func GetPost(c *fiber.Ctx) error {

	payload := string(c.Request().Body())
	log.Println("---databody----")

	key := gjson.Get(payload, "key").String()
	id := gjson.Get(payload, "id").String()

	body := c.JSON(fiber.Map{
		"key": key,
		"id":  id,
	})
	b, _ := json.Marshal(body)

	log.Println(b)

	log.Println("---payload----")
	log.Println(payload)

	// if key == "instagram" {
	// 	url := instagram+"account-info?username="++"&wrap=0"
	// }
	// req, _ := http.NewRequest("GET", url, nil)

	// req.Header.Add("x-rapidapi-host", "instagram40.p.rapidapi.com")
	// req.Header.Add("x-rapidapi-key", "383761aad6mshbf292f71c7c000bp1ede65jsn8de17628fc26")

	// res, _ := http.DefaultClient.Do(req)

	// defer res.Body.Close()
	// body, _ := ioutil.ReadAll(res.Body)

	// fmt.Println(res)
	// fmt.Println(string(body))

	message := string(c.Request().Body())
	return c.SendString(message)

}

// func gdata(nodes []gjson.Result) map[string]string {
// 	//thisMap := make(map[fiber.Map])
// 	for _, v := range nodes {
// 		thisMap = fiber.Map{
// 			"id":            string(gjson.Get(v.String(), "node.id").String()),
// 			"shortcode":     string(gjson.Get(v.String(), "node.shortcode").String()),
// 			"is_video":      string(gjson.Get(v.String(), "node.is_video").String()),
// 			"thumbnail_src": string(gjson.Get(v.String(), "node.thumbnail_src").String()),
// 		}

// 	}
// 	return thisMap

// }
type KeyData struct {
	Key     string `json:"key" xml:"key" form:"key"`
	Account string `json:"account" xml:"account" form:"account"`
}

func toBase64(url string) string {
	resp, err := http.Get(url)
	if err != nil {
		log.Fatal(err)
	}

	defer resp.Body.Close()

	bytes, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
	}

	var base64Encoding string
	mimeType := http.DetectContentType(bytes)

	switch mimeType {
	case "image/jpeg":
		base64Encoding += "data:image/jpeg;base64,"
	case "image/png":
		base64Encoding += "data:image/png;base64,"
	}

	base64Encoding += base64.StdEncoding.EncodeToString(bytes)
	return base64Encoding
}

func GetUser(c *fiber.Ctx) error {
	p := new(KeyData)

	if err := c.BodyParser(p); err != nil {
		return err
	}
	payload := string(c.Request().Body())
	log.Println("---databody----")
	key := p.Key         //(gjson.Get(payload, "key")).String()
	account := p.Account //gjson.Get(payload, "account").String()

	body := c.JSON(fiber.Map{
		"key":     key,
		"account": account,
	})
	b, _ := json.Marshal(body)

	log.Println(b)

	log.Println("---payload----")
	log.Println(payload)

	if key == "instagram" {
		return get_instagram(account, c)
	}

	if key == "facebook" {
		return get_facebook(account, "posts", c)
	}

	if key == "twitter" {

		return get_twitter(account, c)
	}

	return c.SendString("404 Not Found")
}

func get_instagram(account string, c *fiber.Ctx) error {

	url := "https://" + instagram + "/account-info?username=" + account + "&wrap=0"
	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("x-rapidapi-host", instagram)
	req.Header.Add("x-rapidapi-key", rapid_key) //"383761aad6mshbf292f71c7c000bp1ede65jsn8de17628fc26")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)
	id := gjson.Get(string(body), "id").String()
	profile_pic_url := toBase64(gjson.Get(string(body), "profile_pic_url").String())
	profile_pic_hd := toBase64(gjson.Get(string(body), "profile_pic_url_hd").String())
	_nodes := gjson.Get(string(body), "edge_owner_to_timeline_media.edges").Array()
	//thisMap := make(map[string]string)//make([]map[string]string)

	thisMap := make(map[int]map[string]string)
	for i, v := range _nodes {
		thisMap[i] = map[string]string{
			"id":            string(gjson.Get(v.String(), "node.id").String()),
			"shortcode":     string(gjson.Get(v.String(), "node.shortcode").String()),
			"is_video":      string(gjson.Get(v.String(), "node.is_video").String()),
			"thumbnail_src": toBase64(string(gjson.Get(v.String(), "node.thumbnail_src").String())),
		}
		//thisMap = append(thisMap,aMap)

	}

	j, _ := json.Marshal(thisMap)
	//fmt.Println(string(j), err)
	_res := c.JSON(fiber.Map{
		"key":             "instagram",
		"id":              id,
		"username":        account,
		"profile_pic_url": profile_pic_url,
		"profile_pic_hd":  profile_pic_hd,
		"data":            string(j),
	})

	return _res
}

func get_facebook(account string, arg string, c *fiber.Ctx) error {

	url := "https://" + facebook + "/fba/facebook-lookup-posts?url=" + account + "/" + arg
	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("x-rapidapi-host", facebook)
	req.Header.Add("x-rapidapi-key", rapid_key) //"383761aad6mshbf292f71c7c000bp1ede65jsn8de17628fc26")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)
	id := gjson.Get(string(body), "pageId").String()
	profile_pic_url := "" //gjson.Get(string(body), "profile_pic_url").String()
	profile_pic_hd := ""  //gjson.Get(string(body), "profile_pic_url_hd").String()
	_nodes := gjson.Get(string(body), "posts").Array()
	//thisMap := make(map[string]string)//make([]map[string]string)

	thisMap := make(map[int]map[string]string)
	for i, v := range _nodes {
		thisMap[i] = map[string]string{
			"id":   string(gjson.Get(v.String(), "id").String()),
			"text": string(gjson.Get(v.String(), "text").String()),
			//"is_video":      string(gjson.Get(v.String(), "node.is_video").String()),
			"thumbnail_src": string(gjson.Get(v.String(), "imageUrlList").String()),
		}
		//thisMap = append(thisMap,aMap)

	}

	j, _ := json.Marshal(thisMap)
	//fmt.Println(string(j), err)
	_res := c.JSON(fiber.Map{
		"key":             "facebook",
		"id":              id,
		"username":        account,
		"profile_pic_url": profile_pic_url,
		"profile_pic_hd":  profile_pic_hd,
		"data":            string(j),
	})

	return _res
}

func get_profile(account string, c *fiber.Ctx) error {

	//getProfile?username=nike" twitter
	url := "https://" + twitter + "/getProfile?username=" + account
	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("x-rapidapi-host", twitter)
	req.Header.Add("x-rapidapi-key", rapid_key) //"383761aad6mshbf292f71c7c000bp1ede65jsn8de17628fc26")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)
	id := gjson.Get(string(body), "id").String()
	favourites_count := gjson.Get(string(body), "favourites_count").String()
	followers_count := gjson.Get(string(body), "followers_count").String()
	following_count := gjson.Get(string(body), "following_count").String()
	username := gjson.Get(string(body), "username").String()
	profile_image_url_https := gjson.Get(string(body), "profile_image_url_https").String()

	return c.JSON(fiber.Map{
		"key":              "twitter",
		"id":               id,
		"username":         username,
		"favourites_count": favourites_count,
		"followers_count":  followers_count,
		"following_count":  following_count,
		"profile_pic_url":  profile_image_url_https,
	})

	// "favourites_count":6988
	// "followers_count":8313604
	// "following_count":116
	// "id":"415859364"
	// "location":"Beaverton, Oregon"
	// "media_count":3104
	// "name":"Nike"
	// "profile_banner_url":"https://pbs.twimg.com/profile_banners/415859364/1516124378"
	// "profile_image_url_https":"https://pbs.twimg.com/profile_images/953320896101412864/UdE5mfkP_normal.jpg"
	// "statuses_count":36869
	// "username":"Nike"

}

func get_twitter(account string, c *fiber.Ctx) error {

	profile := get_profile(account, c)
	fmt.Println(profile)

	// url := "https://" + instagram + "/getTweets?user_id=" + profile
	// req, _ := http.NewRequest("GET", url, nil)

	// req.Header.Add("x-rapidapi-host", instagram)
	// req.Header.Add("x-rapidapi-key", rapid_key) //"383761aad6mshbf292f71c7c000bp1ede65jsn8de17628fc26")

	// res, _ := http.DefaultClient.Do(req)

	// defer res.Body.Close()
	// body, _ := ioutil.ReadAll(res.Body)
	// id := gjson.Get(string(body), "id").String()
	// profile_pic_url := gjson.Get(string(body), "profile_pic_url").String()
	// profile_pic_hd := gjson.Get(string(body), "profile_pic_url_hd").String()
	// _nodes := gjson.Get(string(body), "edge_owner_to_timeline_media.edges").Array()
	// //thisMap := make(map[string]string)//make([]map[string]string)

	// thisMap := make(map[int]map[string]string)
	// for i, v := range _nodes {
	// 	thisMap[i] = map[string]string{
	// 		"id":            string(gjson.Get(v.String(), "node.id").String()),
	// 		"shortcode":     string(gjson.Get(v.String(), "node.shortcode").String()),
	// 		"is_video":      string(gjson.Get(v.String(), "node.is_video").String()),
	// 		"thumbnail_src": string(gjson.Get(v.String(), "node.thumbnail_src").String()),
	// 	}
	// 	//thisMap = append(thisMap,aMap)

	// }

	// j, _ := json.Marshal(thisMap)
	// //fmt.Println(string(j), err)
	// _res := c.JSON(fiber.Map{
	// 	"key":             "instagram",
	// 	"id":              id,
	// 	"username":        account,
	// 	"profile_pic_url": profile_pic_url,
	// 	"profile_pic_hd":  profile_pic_hd,
	// 	"data":            string(j),
	// })

	// return _res
	return c.SendString("404 Not Found")
}
