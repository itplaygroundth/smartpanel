<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// ini_set('display_errors', '1');
// ini_set('display_startup_errors', '1');
//error_reporting(E_ALL);
class facebook extends MX_Controller {
	public $id;
	public $username;
    public $url_path;
    public $rapid_key;

	public function __construct(){
		parent::__construct();
		$this->load->model('rapid_model', 'model');
        $this->rapid_key =  getenv('RAPID_KEY');
		//Config Module
		// $this->tb_users      = USERS;
		// $this->tb_categories = CATEGORIES;
		// $this->tb_services   = SERVICES;
		// $this->tb_orders     = ORDER;
		// $this->tb_transaction_logs   = TRANSACTION_LOGS;
		
	}

	public function index(){
		//redirect(cn('api/docs'));
	}

    public function getmedia($url){
        //$id=post('user_id');
        $curl = curl_init();
        curl_setopt_array($curl, [
           // CURLOPT_URL => "https://{$this->url_path}/account-medias?userid={$id}&first=10&after=QVFDOGV6dGFtQnJXdnZ0a1FuMkFLSjRHYjdWMEdTTFltMkZpd1FvcUxuQXZ6bDJFVnpKRzFYU3RMSUoyNXluOXFZUVZ3dG1YM3NSTEJqMVI3TTBKM0ZTNg%3D%3D",
            CURLOPT_URL => "https://{$this->url_path}/fba/facebook-lookup-posts?url={$url}",
            //CURLOPT_URL => "https://instagram40.p.rapidapi.com/account-medias?userid=41349311&first=10&after=QVFDOGV6dGFtQnJXdnZ0a1FuMkFLSjRHYjdWMEdTTFltMkZpd1FvcUxuQXZ6bDJFVnpKRzFYU3RMSUoyNXluOXFZUVZ3dG1YM3NSTEJqMVI3TTBKM0ZTNg%3D%3D",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => [
                "x-rapidapi-host:  {$this->url_path}",
                "x-rapidapi-key: {$this->rapid_key}"
            ],
        ]);

        $response = curl_exec($curl);
        $err = curl_error($curl);
        $res_obj = json_decode($response,true);
        curl_close($curl);
        
        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            // echo_json_string(array(
            //     "data"=>$res_obj
            // ));
            return $res_obj;
        }
    }

    public function getaccount(){

        $this->url_path = getenv(post('url_path'));
        $user_name = post('user_name');
   
    //   $curl = curl_init();
    //   //echo "{$url_path}/account-info?username={$user_name}&wrap=0";
    //   curl_setopt_array($curl, [
    //       CURLOPT_URL => "https://{$this->url_path}/account-info?username={$user_name}&wrap=0",
    //       CURLOPT_RETURNTRANSFER => true,
    //       CURLOPT_FOLLOWLOCATION => true,
    //       CURLOPT_ENCODING => "",
    //       CURLOPT_MAXREDIRS => 10,
    //       CURLOPT_TIMEOUT => 30,
    //       CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //       CURLOPT_CUSTOMREQUEST => "GET",
    //       CURLOPT_HTTPHEADER => [
    //           "x-rapidapi-host:  {$this->url_path}",
    //           "x-rapidapi-key: {$this->rapid_key}"
    //       ],
    //   ]);
      
    //   $response = curl_exec($curl);
    //   $err = curl_error($curl);
      
    //   curl_close($curl);
    //   $res_obj = json_decode($response,true);
    //   //print_r($res_obj);
    //   if ($err) {
    //       echo "cURL Error #:" . $err;
    //   } else {

          
          $response=$this->getmedia($user_name);
          print_r($response);
          $this->id = $response['pageId'];

         // $this->username = $response->['username'];
          $posts = array();
          //print_r($response['posts']);
          //var_dump($response['edges'][0]);
          foreach($response['posts'] as $node){
           //print_r($node);
            $posts[] = (object)[
            'id' =>  $node['node']['Id'],
            'shortcode' => $user_name."/posts/".$node['node']['Id'],
            'is_video'=> FALSE,
            'text'=> $node['node']['text'],
            'thumbnail_src' => 'data:image/jpg;base64,'.base64_encode(file_get_contents($node['node']['imageUrlList'][0]))
            ];
          }
        //   //print_r($posts);
        //    echo_json_string(array(
        //      "id"=> $this->id,
        //      "username"=>$this->username,
        //      "data"=>$posts
        //  ));
      //}
      
        
  
    }

 }
 class postdata {
    public $id;
    public $shorcode;
    public $is_video;
    public $thumbnail_src;

 }
?>