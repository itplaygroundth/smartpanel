package main

import (
	"log"
	"os"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cors"

	//"github.com/gofiber/fiber/v2/middleware/etag"
	"github.com/gofiber/fiber/v2/middleware/favicon"
	"github.com/gofiber/fiber/v2/middleware/logger"
	"github.com/itplaygroundth/canyon/rabbitmq"

	//"github.com/itplaygroundth/canyon/rabbit"
	"github.com/itplaygroundth/canyon/route"
)

func main() {
	app := fiber.New()
	//app.Use(etag.New())
	app.Use(favicon.New())
	app.Use(cors.New())

	app.Use(cors.New(cors.Config{
		AllowOrigins: "*",
		AllowHeaders: "Origin, Content-Type, Accept",
		AllowMethods: "GET,POST,HEAD,PUT,DELETE,PATCH",
	}))
	rabbitmq.Init()
	app.Use(logger.New())
	route.SetupRoutes(app)
	log.Fatal(app.Listen(os.Getenv("GO_PORT")))

}
