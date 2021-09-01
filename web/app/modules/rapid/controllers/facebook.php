<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// ini_set('display_errors', '1');
// ini_set('display_startup_errors', '1');
//error_reporting(E_ALL);
class facebook extends MX_Controller {
	public $tb_users;
	public $tb_categories;
	public $tb_services;
	public $tb_orders;
	public $api_key;
	public $uid;
	public $tb_transaction_logs;

	public function __construct(){
		parent::__construct();
		$this->load->model(get_class($this).'_model', 'model');
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

    public function getinst(){
        echo $url_path = getenv(post('url_path'));
        $user_name = post('user_name');
        $data = array(
            "url_path" =>$url_path,
            "user_name"=>$user_name
        );
      //   print_r($data);
      //   return $data;
      $rapid_key = getenv('RAPID_KEY');
      $curl = curl_init();
      //echo "{$url_path}/account-info?username={$user_name}&wrap=0";
      curl_setopt_array($curl, [
          CURLOPT_URL => "https://{$url_path}/account-info?username={$user_name}&wrap=0",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => [
              "x-rapidapi-host:  {$url_path}",
              "x-rapidapi-key: {$rapid_key}"
          ],
      ]);
      
      $response = curl_exec($curl);
      $err = curl_error($curl);
      
      curl_close($curl);
      
      if ($err) {
          echo "cURL Error #:" . $err;
      } else {
          echo $response;
      }
        
  
    }

 }
?>