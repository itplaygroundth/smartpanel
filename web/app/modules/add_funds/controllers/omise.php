<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 ini_set('display_errors', '1');
 ini_set('display_startup_errors', '1');
 error_reporting(E_ALL);
require_once(APPPATH.'modules/add_funds/libraries/omise_php/lib/Omise.php');

class omise extends MX_Controller {
	 
    public $tab_creditcards;
	public $tb_transaction_logs;
	public $stripeapi;
	public $payment_type;
	public $currency_code;
    public $selected_card;
    public $omise_key;
    public $omise_secret;
    public $currency_rate;
    public $amount;
    public $amount_group;
    public $user_info;

   


	public function __construct(){
	    
		parent::__construct();
        $this->load->model(get_class($this).'_model', 'model');
		$this->tb_users            = $this->model->tb_users;
        $this->tb_creditcards      = CREDITCARDS;
		$this->tb_transaction_logs = TRANSACTION_LOGS;
		$this->payment_type		   = "omise";
		$this->currency_code       = get_option("currency_code");
        $this->currency_rate       = get_option("omise_currency_rate_to_usd");
        define('OMISE_PUBLIC_KEY', get_option("omise_merchant_key"));
        define('OMISE_SECRET_KEY', get_option("omise_merchant_secret"));
        $this->user_info = $this->model->get_users_info();
       // $this->load->helper("paytm");

	}

	public function index(){

       
		$path_file = APPPATH."./modules/setting/views/integrations/omise.php";
        if (!file_exists($path_file)) {
        	redirect(cn('add_funds'));
        }
        $creditcards = $this->model->get_card_lists();
        if($this->currency_code!="THB")
        $this->currency_rate=$this->currency_rate; 
        else $this->currency_rate=1;
        $this->amount =  session('amount')*$this->currency_rate;
   
  
       
		$data = array(
			"module"        => 'add_funds',
			"amount"        =>  number_format((float)$this->amount, 2, '.', ''),
            "creditcards"    => $creditcards,
            "selected_card"  => $this->selected_card,
            "omise_key"      => get_option("omise_merchant_key"),
            "omise_secret"   => get_option("omise_merchant_secret"),
            "currency"       => $this->currency_code,
            "currency_rate"  => $this->currency_rate,
            "omisetoken"     => session("omisetoken"),
            //"qr"             => $source['scannable_code']['image']['download_uri'],
            "amount_group"   => $this->amount_group
            
		);
		$this->template->build('omise/omise_payform', $data);
        
	}

    public function process(){
		
		//$amount = post("amount");
		//$agree  = post("agree");
         
        $source = NULL;
        $user_id =session('uid');
        $transaction_id = "";
        
        
        //$qr="";
        $total = session('amount');
		$payment_method = post('payment_method');
        $user_name = get_field(USERS, ["id" => session('uid')], 'first_name');
        $user_email = get_field(USERS, ["id" => session('uid')], 'email');
        $omise_customer_id=get_field(USERS, ["id" => session('uid')], 'omise_customer_id');
        $creditcards = NULL;
        $card_token=NULL;
        if($payment_method == "qrcode")
        {
            $charge = OmiseCharge::create(array(
                             'amount' => $total*100,
                             'currency' => 'thb',
                             'source[type]' => 'promptpay',
                             //'' => session("omisetoken")
                    ));//,get_option("omise_merchant_key"),get_option("omise_merchant_secret"));
                   // if(get_option("is_active_".$this->payment_type)){
            $source =$charge['source'];

        } else if($payment_method == "creditcard"){  
            
            if(count($this->model->get_card_lists())>0){
                $creditcards=$this->model->get_card_lists();
               // print_r($creditcards);
                $card_token = $this->model->card_token([
                    'omise_card_name' => $creditcards[0]->name,
                    'omise_card_number' => preg_replace("/\s+/", "", $creditcards[0]->creditcardno),
                    'omise_card_month' => $creditcards[0]->month,
                    'omise_card_year' => $creditcards[0]->year,
                    'omise_card_cvv' => preg_replace("/\s+/", "", post('selected_cvc')),
                ]);
                $token_id = $card_token['id'];
                 } else {
                

                        $card_token = $this->model->card_token([
                            'omise_card_name' => post('cardholder'),
                            'omise_card_number' => preg_replace("/\s+/", "", post('cardnumber')),
                            'omise_card_month' => explode("/",post('cardexpire'))[0],
                            'omise_card_year' => explode("/",post('cardexpire'))[1],
                            'omise_card_cvv' => preg_replace("/\s+/", "", post('cardccv')),
                        ]);
                        $data = array(
                            "ids"             => session("ids"),
                            "uid"             => session("uid"),
                            "omise_token_id"   => $card_token['id'],
                                "name"            => post('cardholder'),
                                "creditcardno"    => preg_replace("/\s+/", "", post('cardnumber')),
                                "year"            => explode("/",post('cardexpire'))[1],
                                "month"           => explode("/",post('cardexpire'))[0],
                                "status"          => 1
                            );
                        $this->model->update_creditcard($data);
                        $token_id = $card_token['id'];
                     }
        
                if(!empty($token_id)){

                    

                    if(empty($omise_customer_id)){
                        $customer = \OmiseCustomer::create([
                            'email' => $user_email,
                            'description' => $user_name,
                            'card' => $token_id
                        ]);
                        $this->model->update_omiseid($customer['id']);
                        $omise_customer_id = $customer['id'];
                    }else {
                        $omise_customer = \OmiseCustomer::retrieve($omise_customer_id);
                        $cards = $omise_customer->getCards();
                        if (empty($cards['data'])) {
                            $omise_customer->update([
                            'card' => $token_id,
                            ]);
                        }
                    }
                    $charge = \OmiseCharge::create([
                        'amount' => $total*100,
                        'currency' => 'thb',
                        'customer' => $omise_customer_id,
                        'return_uri'=> cn('add_funds')."/complete"
                    ]);
                    if($charge['failure_code'] == null){
                        $payment_id = $charge['id'];
                        $transaction_id=$charge['id'];
                        /*----------  Insert to Transaction table  ----------*/
                            $data = array(
                                "ids" 				=> ids(),
                                "uid" 				=> session('uid'),
                                "type" 				=> $this->payment_type,
                                "transaction_id" 	=> $transaction_id,
                                "amount" 	        => $total,
                                "created" 			=> NOW,
                            );
            
                            $this->db->insert($this->tb_transaction_logs, $data);
                            $transaction_id = $this->db->insert_id();
                            
                            /*----------  Add funds to user balance  ----------*/
                            $user_balance = get_field($this->tb_users, ["id" => $user_id], "balance");
            
                        
                            $user_balance += session("real_amount");
            
                            $this->db->update($this->tb_users, ["balance" => $user_balance], ["id" => $user_id]);
                        }else {
                            ms(array(
                                "status"  => "error",
                                "message" => $charge['failure_code']
                            ));
                        }
                    } else {
                        ms(array(
                            "status"  => "error",
                            "message" => $charge['failure_code']
                        ));
                    }
        } else if($payment_method == "offline") {
        
            $this->offline();
        } else if($payment_method == 'truewallet'){
            echo $payment_method;
            echo post('omise_otp');
        }

        
         
        $data = array(
			"module"        => 'add_funds',
			"amount"        =>  number_format((float)$total, 2, '.', ''),
            "creditcards"    => $creditcards,
            "selected_card"  => $this->selected_card,
            "omise_key"      => get_option("omise_merchant_key"),
            "omise_secret"   => get_option("omise_merchant_secret"),
            "currency"       => $this->currency_code,
            "currency_rate"  => $this->currency_rate,
            "omisetoken"     => session("omisetoken"),
            "qr"             => $source!=NULL?$source['scannable_code']['image']['download_uri']:"",
            "amount_group"   => $this->amount_group,
            "payment_method" => $payment_method,
            "image_file"     => "",
            "user_info"      => json_decode($this->user_info[0]->more_information)
            
		);
        if($payment_method=='creditcard' && $charge['failure_code'] == null){
                    set_session("uid", $user_id);
    				set_session("transaction_id", $transaction_id);
    				//redirect(cn("add_funds/success"));
                    $this->load->view('omise/successful', $data);
        }else {
        $this->load->view('omise/'.$payment_method, $data);
        }
	}



    public function otp(){
        $phone_number = post('omise_phonenumber');
        $total = session('amount');
        $payment_method = post('payment_method');
        $return_uri = cn('add_funds')."/complete";
        try {
            $email = get_field(USERS, ['id' => session('uid')], "email");
      
      $charge=  OmiseCharge::create(array(
                'amount'      => $total*100,
                'currency'    => 'THB',
                'email'       => $email,
                'source'      => array( 'type' => 'truemoney', 'phone_number' => $phone_number ),
                //'source'      => $source['id'],
                'return_uri'  => $return_uri
            ));
            //print_r($charge);
            $transaction_id = $charge['source']['id'];
       $data = array(
                "ids" 				=> ids(),
                "uid" 				=> session('uid'),
                "type" 				=> $charge['source']['type'],
                "transaction_id" 	=> $transaction_id,
                "amount" 	        => $charge['source']['amount']/100,
                "status"            => 0,
                "created" 			=> $charge['source']['created_at']
             );
        $this->db->insert($this->tb_transaction_logs, $data);
        $transaction_id = $this->db->insert_id();
         
         $data = array(
             "module"        => 'add_funds',
             "amount"        =>  number_format((float)$this->amount, 2, '.', ''),
             "omise_key"      => get_option("omise_merchant_key"),
             "omise_secret"   => get_option("omise_merchant_secret"),
             "currency"       => $this->currency_code,
             "payment_method" => $payment_method,
             "currency_rate"  => $this->currency_rate,
             "omisetoken"     => session("omisetoken"),
             "omise_phonenumber"=>$phone_number,
             //"charger"=>$charge
        //     //"qr"             => $source['scannable_code']['image']['download_uri'],
        //     "amount_group"   => $this->amount_group
            
         );

        // $this->template->build('omise/otp', $data);
        $this->load->view('omise/otp', $data);
        }
        catch( OmiseBadRequestException $ex)
        {
            //echo $ex;
        }
    }

    public function checkotp(){
        print_r(post());
    }

  

    public function offline(){
        if(isset($_FILES['imagefile'])){
        //echo $_FILES['imagefile']['name'];
        
        $total = session('amount');
        //echo $image_new_name;
        $account_number=post("account_number");
        $user_id = post("user_id");
        $upload_folder="smm/payments/offline/".$user_id."/".$account_number."/";
        if(check_image($_FILES['imagefile']['name'])){
        $image_new_name=$_FILES['imagefile']['name'];
        $image_file_extension = explode('.', $_FILES['imagefile']['name']);
        $image_file_extension = mb_strtolower(end($image_file_extension));
        $image_file_temp = $_FILES['imagefile']['tmp_name'];
        $image_new_name = md5(time() . rand()) . '.' . $image_file_extension;
        $suffix="-offline-".date("Y-m-d-His");
        $image_new_name = uploadimage($image_file_temp,$upload_folder,$image_new_name,$suffix);
       
        if($image_new_name['status']){
            $ids = ids();
             $transaction_id = "off_".session('uid')."_".$ids;
             $imgfile = $image_new_name["image_name"];//"off_".$user_id."_".generateNonce();
             $data = array(
                "status"=>"success",
                "ids" 				=> $ids,
                "uid" 				=> session('uid'),
                "type" 				=> "offline",
                "transaction_id" 	=> $transaction_id,
                "slip" 	            => $imgfile,
                "amount" 	        => $total,
                "status"            => 0,
                "created" 			=> NOW,
             );

             $this->db->insert($this->tb_transaction_logs, $data);
             $transaction_id = $this->db->insert_id();

         
            set_session("transaction_id", $transaction_id);
            $this->load->view('omise/successful', $data);
         
        } else {
            ms(array(
				"status"  => "error",
				"message" => "Upload image file only!",
			));
        }
    
        }
        else {
        
            ms(array(
				"status"  => "error",
				"message" => "Upload image file only!",
			));
          
        
          }
        }
        
    }

    public function truewallet(){
        $payment_method = post('payment_method');
        $data = array(
			"module"        => 'add_funds',
			"amount"        =>  number_format((float)$this->amount, 2, '.', ''),
            "creditcards"    => $creditcards,
            "selected_card"  => $this->selected_card,
            "omise_key"      => get_option("omise_merchant_key"),
            "omise_secret"   => get_option("omise_merchant_secret"),
            "currency"       => $this->currency_code,
            "payment_method" => $payment_method,
            "currency_rate"  => $this->currency_rate,
            "omisetoken"     => session("omisetoken"),
            //"qr"             => $source['scannable_code']['image']['download_uri'],
            "amount_group"   => $this->amount_group
            
		);
        $this->template->build('omise/truewallet', $data);
    }
    public function creditcard(){
        $charge = OmiseCharge::create(array(
            'amount' => $this->amount*100,
            'currency' => 'thb',
            'source[type]' => 'card',
            //'' => session("omisetoken")
        ));//,get_option("omise_merchant_key"),get_option("omise_merchant_secret"));
        // if(get_option("is_active_".$this->payment_type)){
        $source =$charge['source'];
        $this->load->view("omise/redirect", $data);
    }
    public function qrcode(){
        $charge = OmiseCharge::create(array(
            'amount' => $this->amount*100,
            'currency' => 'thb',
            'source[type]' => 'promptpay',
            //'' => session("omisetoken")
        ));//,get_option("omise_merchant_key"),get_option("omise_merchant_secret"));
        // if(get_option("is_active_".$this->payment_type)){
        $source =$charge['source'];
        $this->load->view("omise/qrcode", $data);
    }

    public function update($id=''){

        $id = post('id');
        $data = post('data');
        $data = array(
            'id' => $id,
			'eventdata' => $data,
		);
        //redirect(cn("add_funds/success"));
		//$this->load->view("omise/webhook", $data);
    }

    public function cron(){
       
        $id = post('id');
        
        $data = post('data');
        $data = array(
            'id' => $id,
			'eventdata' => $data,
		);
        //redirect(cn("add_funds/success"));
		//$this->load->view("omise/webhook", $data);
    }

    public function callback(){

    }

   
	public function complete(){

		$ref_id = $this->input->get("ref_id"); // ใช้ ref_id คิวรี่หา charge_id แล้วใช้หาค่า status ว่า transaction นี้สำเร็จหรือไม่สำเร็จ
		
		$charge = OmiseCharge::retrieve($charge_id);
        if($charge['status'] === 'successful') {
           // เงินเข้าบัญชีเรียบร้อยแล้ว
        }else{
           // อาจจะ failed หรือ pending อยู่
        }
	}

    public function success(){
		$id = session("transaction_id");
		$transaction = $this->model->get("*", $this->tb_transaction_logs, "id = '{$id}' AND uid ='".session('uid')."'");
		if (!empty($transaction)) {
			$data = array(
				"module"        => get_class($this),
				"transaction"   => $transaction,
			);
			unset_session("transaction_id");
            //redirect(cn("add_funds/success"));
			//$this->load->view('omise/successful', $data);
            $this->template->build('payment_successfully', $data);
		}else{
            
			redirect(cn("add_funds"));
		}
	}
 
 
	//public function complete(){
	
    	// $web_id = get_option('omise_web_id','4258');
    
    	  
        // if(isset($_POST['CM_TID'])){
    
    
        //     $CM_TID=$_POST['CM_TID'];   // getting TID with user redirection   
            
        //     $url="https://www.omise.com/Pay/verify_v2.php?CM_TID=".urlencode($CM_TID)."&web_id=".urlencode($web_id);
            
        //     $result = $this->connect_api($url);
            
        //     $obj = json_decode($result);
            
        //     if($obj['status'] == 1){ // its mean payment received....
            
        //             $getSeperate = explode('_',$obj['addi_info']);
    	     
        //         	$user_id = $getSeperate[0];
        //         	$real_amount =$getSeperate[1] ;
    			
    	// 			/*----------  Insert to Transaction table  ----------*/
    	// 			$data = array(
    	// 				"ids" 				=> ids(),
    	// 				"uid" 				=> $user_id,
    	// 				"type" 				=> $this->payment_type,
    	// 				"transaction_id" 	=> $obj["transaction_id"],
    	// 				"amount" 	        => $obj['USD_amount']*get_option('omise_currency_rate_to_usd', 76),
    	// 				"created" 			=> NOW,
    	// 			);
    
    	// 			$this->db->insert($this->tb_transaction_logs, $data);
    	// 			$transaction_id = $this->db->insert_id();
    				
    	// 			/*----------  Add funds to user balance  ----------*/
    	// 			$user_balance = get_field($this->tb_users, ["id" => $user_id], "balance");
    
    			
    	// 			$user_balance += $real_amount*get_option('omise_currency_rate_to_usd', 76);
     
    	// 			$this->db->update($this->tb_users, ["balance" => $user_balance], ["id" => $user_id]);
    
    	// 			/*----------  Send payment notification email  ----------*/
    	// 			if (get_option("is_payment_notice_email", '')) {
    	// 				$CI = &get_instance();
    	// 				if(empty($CI->payment_model)){
    	// 					$CI->load->model('model', 'payment_model');
    	// 				}
    	// 				$check_send_email_issue = $CI->payment_model->send_email(get_option('email_payment_notice_subject', ''), get_option('email_payment_notice_content', ''), $user_id);
    	// 				if($check_send_email_issue){
    	// 					ms(array(
    	// 						"status" => "error",
    	// 						"message" => $check_send_email_issue,
    	// 					));
    	// 				}
    	// 			}
    	// 			set_session("uid", $user_id);
    	// 			set_session("transaction_id", $transaction_id);
    				 
    	// 			redirect(cn("add_funds/success"));
                
        //     }else{
            
        //         redirect(cn("add_funds/unsuccess"));
            
        //     }
            
        // }else{
        //     redirect(cn("add_funds/unsuccess"));
        // }    
	    
	//}
	
	private function connect_api($url) {
	    $ch = curl_init();
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_URL, $url);
        $result = curl_exec($ch);
        curl_close($ch);
        
		return $result;
  }

}