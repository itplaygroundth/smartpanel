<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class creditcard extends MX_Controller {
	public $tb_users;
	public $tb_creditcards;
	public $tb_services;
	public $columns;
	public $module_name;
	public $module_icon;

	public function __construct(){
		parent::__construct();
		$this->load->model(get_class($this).'_model', 'model');

		//Config Module
		$this->tb_creditcards = CREDITCARDS;
		$this->tb_services   = SERVICES;
		$this->module_name   = 'creditcard';
		$this->module_icon   = "fa fa-credit-card";
		$this->columns = array(
			"name"             => lang("Name"),
			"status"           => lang("Status"),
		);
	}

	public function index(){
		$page        = (int)get("p");
		$page        = ($page > 0) ? ($page - 1) : 0;
		$limit_per_page = get_option("default_limit_per_page", 10);
		$query = array();
		$query_string = "";
		if(!empty($query)){
			$query_string = "?".http_build_query($query);
		}
		$config = array(
			'base_url'           => cn(get_class($this).$query_string),
			'total_rows'         => $this->model->get_creditcard_lists(true),
			'per_page'           => $limit_per_page,
			'use_page_numbers'   => true,
			'prev_link'          => '<i class="fe fe-chevron-left"></i>',
			'first_link'         => '<i class="fe fe-chevrons-left"></i>',
			'next_link'          => '<i class="fe fe-chevron-right"></i>',
			'last_link'          => '<i class="fe fe-chevrons-right"></i>',
		);
		$this->pagination->initialize($config);
		$links = $this->pagination->create_links();

		$creditcard = $this->model->get_creditcard_lists(false, "all", $limit_per_page, $page * $limit_per_page);

		$data = array(
			"module"     => get_class($this),
			"columns"    => $this->columns,
			"creditcard" => $creditcard,
			"from"       => $page * $limit_per_page,
			"links"      => $links,
		);

		$this->template->build('index', $data);
	}

	public function update($ids = ""){

		$creditcard = $this->model->get("*", $this->tb_creditcards, "ids = '{$ids}'");

		$data = array(
			"module"   => get_class($this),
			"creditcard" => $creditcard,
		);
		$this->load->view('update', $data);
	}

	public function ajax_update($ids = ""){

    
		$name 		= post("name");
    $creditcardno =  post("creditcardno");
    $creditcard_month = post("creditcard_month");
    $creditcard_year =  post("creditcard_year");
    $creditcard_cvv  = post("creditcard_cvv");
		$status 	= (int)post("status");
		// $desc 		= $this->input->post("desc");
		// $desc       = trim($desc);
		// $desc       = stripslashes($desc);
		// $desc       = htmlspecialchars($desc, ENT_QUOTES);
		if($name == ""){
			ms(array(
				"status"  => "error",
				"message" => lang("name_is_required")
			));
		}
    $ids = session('ids');
    
		// if($sort == "" || $sort <= 0){
		// 	ms(array(
		// 		"status"  => "error",
		// 		"message" => lang("sort_number_must_to_be_greater_than_zero")
		// 	));
		// }

		//
    // 
    // $user     = $this->model->get("*", $this->tb_users, "ids = '{$ids}' ");
    // print_r($user);
		$data = array(
      "ids"             => session("ids"),
      "uid"             => session("uid"),
			"name"            => $name,
			"creditcardno"    => $creditcardno,
			"year"            => $creditcard_year,
      "month"           => $creditcard_month,
			"status"          => $status
		);
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
		
		ms(array(
			"status"  => "success",
			"message" => lang("Update_successfully")
		));
	}
	
	public function ajax_delete_item($ids = ""){
		$this->model->delete($this->tb_creditcards, $ids, false);
	}

	public function ajax_actions_option(){
	// 	$type = post("type");
	// 	$idss = post("ids");
	// 	if ($type == '') {
	// 		ms(array(
	// 			"status"  => "error",
	// 			"message" => lang('There_was_an_error_processing_your_request_Please_try_again_later')
	// 		));
	// 	}

	// 	if (in_array($type, ['delete', 'deactive', 'active']) && empty($idss)) {
	// 		ms(array(
	// 			"status"  => "error",
	// 			"message" => lang("please_choose_at_least_one_item")
	// 		));
	// 	}
	// 	switch ($type) {
	// 		case 'delete':
	// 			foreach ($idss as $key => $ids) {
	// 				/*----------  delete all related services  ----------*/
	// 				$item = $this->model->get("id, ids", $this->tb_creditcards, ['ids' => $ids]);
	// 				if (!empty($item)) {
	// 					$this->db->delete($this->tb_services, ["cate_id" => $item->id]);
	// 				}
	// 				$this->db->delete($this->tb_creditcards, ['ids' => $ids]);
	// 			}
	// 			ms(array(
	// 				"status"  => "success",
	// 				"message" => lang("Deleted_successfully")
	// 			));
	// 			break;
	// 		case 'deactive':
	// 			foreach ($idss as $key => $ids) {
	// 				/*----------  deactive all related services  ----------*/
	// 				$item = $this->model->get("id, ids", $this->tb_creditcards, ['ids' => $ids]);
	// 				if (!empty($item)) {
	// 					$this->db->update($this->tb_services, ['status' => 0], ["cate_id" => $item->id]);
	// 				}

	// 				$this->db->update($this->tb_creditcards, ['status' => 0], ['ids' => $ids]);
	// 			}
	// 			ms(array(
	// 				"status"  => "success",
	// 				"message" => lang("Updated_successfully")
	// 			));
	// 			break;

	// 		case 'active':
	// 			foreach ($idss as $key => $ids) {
	// 				/*----------  active all related services  ----------*/
	// 				$item = $this->model->get("id, ids", $this->tb_creditcards, ['ids' => $ids]);
	// 				if (!empty($item)) {
	// 					$this->db->update($this->tb_services, ['status' => 1], ["cate_id" => $item->id]);
	// 				}

	// 				$this->db->update($this->tb_creditcards, ['status' => 1], ['ids' => $ids]);
	// 			}
	// 			ms(array(
	// 				"status"  => "success",
	// 				"message" => lang("Updated_successfully")
	// 			));
	// 			break;


	// 		case 'all_deactive':
	// 			$creditcard = $this->model->fetch("id, ids", $this->tb_creditcards, ['status' => 0]);
	// 			if (empty($creditcard)) {
	// 				ms(array(
	// 					"status"  => "error",
	// 					"message" => lang("failed_to_delete_there_are_no_deactivate_creditcard_now")
	// 				));
	// 			}

	// 			/*----------  delete all related services  ----------*/
	// 			foreach ($creditcard as $key => $row) {
	// 				$item = $this->model->get("id, ids", $this->tb_creditcards, ['ids' => $row->ids]);
	// 				if (!empty($item)) {
	// 					$this->db->delete($this->tb_services, ["cate_id" => $item->id, 'status' => 0]);
	// 				}
	// 			}

	// 			$this->db->delete($this->tb_creditcards, ['status' => 0]);
	// 			ms(array(
	// 				"status"  => "success",
	// 				"message" => lang("Deleted_successfully")
	// 			));

	// 			break;
			
	// 		default:
	// 			ms(array(
	// 				"status"  => "error",
	// 				"message" => lang('There_was_an_error_processing_your_request_Please_try_again_later')
	// 			));
	// 			break;
	// 	}

	 }
}