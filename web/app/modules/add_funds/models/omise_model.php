<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'modules/add_funds/libraries/omise_php/lib/Omise.php');
class omise_model extends MY_Model {
	public $tb_users;
	public $tb_creditcards;
	const CHARGE_ID = 'omise_charge_id';

	/**
	 * @var string Omise charge statuses
	 */
	const STATUS_SUCCESSFUL = 'successful';
	const STATUS_FAILED     = 'failed';
	const STATUS_PENDING    = 'pending';
	const STATUS_EXPIRED    = 'expired';
	const STATUS_REVERSED   = 'reversed';

	public function __construct(){
		//$this->tb_creditcards = CREDITCARDS;
		parent::__construct();
		$this->tb_users            = USERS;
		$this->tb_creditcards = CREDITCARDS;
		
	}

	function update_omiseid($omise_customer_id){
		// $this->db->update()
		// $this->db->where('uid', session('uid'));
		$this->db->update($this->tb_users, ["omise_customer_id" => $omise_customer_id], ["id" => session('uid')]);
		//$this->db->update($this->tb_users, ["balance" => $user_balance], ["id" => $user_id]);
	}

	function update_creditcard($data){
		
		//print_r($data);
		    $ids =  session('ids');
			$check_item = $this->model->get("id, ids", $this->tb_creditcards, "ids = '{$ids}'");
			
			if(empty($check_item)){
				$data["ids"]     = ids();
				$data["changed"] = NOW;
				$data["created"] = NOW;
	
				$this->db->insert($this->tb_creditcards, $data);
			}else{
				$data["changed"] = NOW;
				$this->db->update($this->tb_creditcards, $data, array("ids" => $check_item->ids));
			
			}
	}

	function get_card_lists($status = false){
		$data  = array();
		if ($status) {
			$this->db->where("status", 1);
		}
		$this->db->select("*");
		$this->db->from("creditcards");
		$this->db->where('uid', session('uid'));
		$this->db->order_by("id", 'ASC');

		$query = $this->db->get();
	
			$result = $query->result();
			return $result;
		
		//return $result;
	}
	function get_creditcard_list(){
		$data  = array();
		
		$this->db->select("*");
		$this->db->from("creditcards");
		$this->db->where('uid', session('uid'));
		$this->db->order_by("id", 'ASC');

		$query = $this->db->get();
		$result = $query->result();
		$data[]=$result;
		return $data;
	}

	public function get_cardtoken($token){
		return OmiseToken::retrieve($token);
	}

	public function card_token($omise_card)
    {
        try {
            $token = \OmiseToken::create(array(
            
            'card' => array(
            'name'             => $omise_card['omise_card_name'],
            'number'           => $omise_card['omise_card_number'],
            'expiration_month' => $omise_card['omise_card_month'],
            'expiration_year'  => $omise_card['omise_card_year'],
			"city"			   => "bangkok",
            'security_code'    => $omise_card['omise_card_cvv']
            )
          )
            );

            return $token;
        } catch (Exception $e) {
            return false;
        }
    }

	public function get_users_info(){

		$data  = array();
		
		$this->db->select("more_information");
		$this->db->from($this->tb_users);
		$this->db->where('id', $_SESSION['uid']);
		$this->db->order_by("id", 'ASC');
		
		$query = $this->db->get();
		$result = $query->result();
		return $result;
	
	}

    

}
