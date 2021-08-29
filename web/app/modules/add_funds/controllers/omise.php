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

	}

	public function index(){
	  //  echo '<pre>';print_r($_SESSION); die;
	    //get('*', $this->tb_creditcards, ['uid' => session('uid')]);
       //print_r($creditcards);
       
		$path_file = APPPATH."./modules/setting/views/integrations/omise.php";
        if (!file_exists($path_file)) {
        	redirect(cn('add_funds'));
        }
        $creditcards = $this->model->get_card_lists();
        if($this->currency_code!="THB")
        $this->currency_rate=$this->currency_rate; 
        else $this->currency_rate=1;
        $this->amount =  session('amount')*$this->currency_rate;
   
    //     $charge = OmiseCharge::create(array(
    //              'amount' => $this->amount*100,
    //              'currency' => 'thb',
    //              'source[type]' => 'promptpay',
    //              //'' => session("omisetoken")
    //     ));//,get_option("omise_merchant_key"),get_option("omise_merchant_secret"));
    //    // if(get_option("is_active_".$this->payment_type)){
    //    $source =$charge['source'];
      
        // $source = OmiseSource::create(array(
        //     'amount' => $this->amount,
        //     'currency' => 'thb',
        //     'type' => 'promptpay'
        //   ));
        // print_r($source);
        // $charge = \OmiseCharge::create(array(
        //     'amount' => $this->amount,
        //     'currency' => 'thb',
        //     'source' => session("omisetoken")
        //   ));
        // print_r($charge);
       
        
        // $source = OmiseSource::create(array(
        //     'amount' => $this->amount,
        //     'currency' => 'thb',
        //     'type' => 'promptpay'
        //   ));
        // print_r($source);
        //$this->amount_group        = str_split(get_option("omise_amount_group"),",");
        //print_r($this->amount_group);
       
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
        $user_info = $this->model->get_users_info();
        
        //$qr="";
        $total = session('amount')*$this->currency_rate;
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
    
    			
    				$user_balance += session("real_amount")*get_option('cashmaal_currency_rate_to_usd', 76);
     
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
            "user_info"      => json_decode($user_info[0]->more_information)
            
		);
        if($payment_method=='creditcard' && $charge['failure_code'] == null){
                    set_session("uid", $user_id);
    				set_session("transaction_id", $transaction_id);
    				redirect(cn("add_funds/success"));
        }else {
        $this->template->build('omise/'.$payment_method, $data);
        }
	}

    public function otp(){
        $phone_number = post('omise_phonenumber');
        $total = session('amount')*$this->currency_rate;
        $return_uri = cn('add_funds')."/complete";
        try {
  
        // $source = OmiseSource::create(array(
        //     'amount' => $total*100,
        //     'currency' => 'thb',
        //     'type' => 'truemoney',
        //     'phone_number'=>$phone_number
        //     //'' => session("omisetoken")
        // )); 
       
              
    //   $metadata = array();
      $charge=  OmiseCharge::create(array(
                'amount'      => $total*100,
                'currency'    => 'THB',
                'source'      => array( 'type' => 'truemoney', 'phone_number' => $phone_number ),
                //'source'      => $source['id'],
                'return_uri'  => $return_uri
            ));
     
         
         $data = array(
             "module"        => 'add_funds',
             "amount"        =>  number_format((float)$this->amount, 2, '.', ''),
             "omise_key"      => get_option("omise_merchant_key"),
             "omise_secret"   => get_option("omise_merchant_secret"),
             "currency"       => $this->currency_code,
             "currency_rate"  => $this->currency_rate,
             "omisetoken"     => session("omisetoken"),
             "omise_phonenumber"=>$phone_number,
             //"charger"=>$charge
        //     //"qr"             => $source['scannable_code']['image']['download_uri'],
        //     "amount_group"   => $this->amount_group
            
         );

        // $this->template->build('omise/otp', $data);
        $this->template->build('omise/otp', $data);
        }
        catch( OmiseBadRequestException $ex)
        {
            //echo $ex;
        }
    }

    // public function charge( $order_id, $order ) {
	// 	$phone_number = isset( $_POST['omise_phone_number_default'] ) && 1 == $_POST['omise_phone_number_default'] ? $order->get_billing_phone() : sanitize_text_field( post('omise_phonenumber') );
	// 	$total        = $order->get_total();
	// 	$currency     = $order->get_currency();
	// 	$return_uri   = add_query_arg(
	// 		array( 'wc-api' => 'omise_truemoney_callback', 'order_id' => $order_id ), home_url()
	// 	);
	// 	$metadata     = array_merge(
	// 		apply_filters( 'omise_charge_params_metadata', array(), $order ),
	// 		array( 'order_id' => $order_id ) // override order_id as a reference for webhook handlers.
	// 	);

	// 	return OmiseCharge::create( array(
	// 		'amount'      => Omise_Money::to_subunit( $total, $currency ),
	// 		'currency'    => $currency,
	// 		'description' => apply_filters( 'omise_charge_params_description', 'WooCommerce Order id ' . $order_id, $order ),
	// 		'source'      => array( 'type' => 'truemoney', 'phone_number' => $phone_number ),
	// 		'return_uri'  => $return_uri,
	// 		'metadata'    => $metadata
	// 	) );
	// }

    public function offline(){

        $filename=post('filename');
        print_r($_FILES["filename"]);
        echo $filename;
    }

    public function truewallet(){
        // $charge = OmiseCharge::create(array(
        //     'amount' => $this->amount*100,
        //     'currency' => 'thb',
        //     'source[type]' => 'truemoney',
        //     'return_uri'=> 'http://example.com/orders/345678/complete',
        //     'source[phone_number]'=>'0812345678'
        //     //'' => session("omisetoken")
        // ));//,get_option("omise_merchant_key"),get_option("omise_merchant_secret"));
        // // if(get_option("is_active_".$this->payment_type)){
        // $source =$charge['source'];
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
	/**
	 *
	 * Create payment
	 *
	 */
	public function create_payment(){

        $ORDER_ID = $_POST["ORDER_ID"];
		$TXN_AMOUNT = $_POST["TXN_AMOUNT"];
        
		$paramList = array();

		$paramList["pay_method"] = "";
		$paramList["amount"] = $TXN_AMOUNT;
		$paramList["currency"] = "USD";
		$paramList["succes_url"] = cn("add_funds/omise/complete");
		$paramList["cancel_url"] = cn("add_funds/omise/complete");
		$paramList["client_email"] = get_field(USERS, ["id" => session('uid')], 'email');
		$paramList["web_id"] = get_option('omise_web_id','4258');
		$paramList["order_id"] = $ORDER_ID;
		$paramList["addi_info"] = session("uid")."_".session("real_amount");

	
		$data = array(
			'paramList' => $paramList,
		);

		$this->load->view("omise/redirect", $data);
		
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

    public function create(){
	
		//$post = $this->input->post(); 
        // try {
        //     $card_token = Omise::card_token([
        //     'omise_card_name' => post('omise_card_name'),
        //     'omise_card_number' => preg_replace("/\s+/", "", post('omise_card_number')),
        //     'omise_card_month' => post('omise_card_month'),
        //     'omise_card_year' => post('omise_card_year'),
        //     'omise_card_cvv' => preg_replace("/\s+/", "", post('omise_card_cvv'),
        //   ]);
        // } catch (Exception $e) {
        //     //Alerts::add_error(language()->pay->error_message->omise_card."".$e);
        //    // redirect('pay/' . $this->plan_id);
        // }
		//$omiseToken = $post['omise_token']; // omiseToken จะถูกส่งมาอัตโนมัติผ่าน omise form
		///print_r($post);
		// $return_uri = base_url("payment/complete/".$ref_id); // ในขั้นตอนนี้ให้สร้าง ref_id สำหรับอ้างอิงไว้ใช้ในขั้นตอนต่อไป อาจจะใช้เป็น order id ก็ได้ ประมาณว่า order นี้กำลังจะชำระเงิน

		// $charge = OmiseCharge::create(array(
		// 	'amount' => $amount,
		// 	'currency' => 'THB',
		// 	'card' => $omiseToken,
		// 	'return_uri' => $return_uri, // return_uri คือ uri สุดท้ายที่จะกลับมาที่หน้าเว็บไซต์ของเรา
        // ));
        
		// $charge_id = $charge['id'];
        // $authorize_uri = $charge['authorize_uri'];
        
        // // จังหวะนี้สำคัญ ก่อนที่จะ redirect ไปจากหน้านี้ ให้บันทึก ref_id และ charge_id ไว้ในฐานข้อมูลของเรา 
        // // เพื่อใช้อ้างอิงว่า transaction นี้ สำเร็จ หรือ ไม่สำเร็จ

		// redirect($authorize_uri,'refresh'); // เราจะรีไปยังหน้าการยืนยันตัวตนผ่านระบบ OTP ของธนาคารนั้น ๆ 
		//echo "create";
        $ORDER_ID = $_POST["ORDER_ID"];
		$TXN_AMOUNT = $_POST["TXN_AMOUNT"];
        
		$paramList = array();

		$paramList["pay_method"] = "";
		$paramList["amount"] = $TXN_AMOUNT;
		$paramList["currency"] = "USD";
		$paramList["succes_url"] = cn("add_funds/omise/complete");
		$paramList["cancel_url"] = cn("add_funds/omise/complete");
		$paramList["client_email"] = get_field(USERS, ["id" => session('uid')], 'email');
		$paramList["web_id"] = get_option('omise_web_id','4258');
		$paramList["order_id"] = $ORDER_ID;
		$paramList["addi_info"] = session("uid")."_".session("real_amount");

	
		$data = array(
			'paramList' => $paramList,
		);

		$this->load->view("omise/redirect", $data);
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