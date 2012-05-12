<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Arrangementen extends CI_Controller {
	
	public function __construct()
   	{
   		
    	parent::__construct();
		$this->load->model("Arrangementen_model");
			
	}

	/*
	 * 
	 * Public function index()
	 * 
	 * Will display all arrangementen categories 
	 * 
	 * 
	 */

	public function index()
	{
	
	    $data = $this->Arrangementen_model->getArrCat();

		$this->load->view("header", array("page" => "Arrangementen", "pagetitle" => "Arrangementen"));
		$this->load->view("arrangementen", array("name" => $data));    		
		$this->load->view("footer");
	
	}
	
	/*
	 * 
	 * Public function category()
	 * 
	 * Will display all subcetagories followed by the different items in the category.
	 * 
	 */
	
	public function category()
	{
			
		$link 	=  $this->uri->segment(3,0);
	
		$id		=  $this->Arrangementen_model->arrangementCatLinkToId($link);
	
		$data   =  $this->Arrangementen_model->getArrCatItems($id);
		
		
		$title 		=  	$this->Arrangementen_model->arrangementPageName($link);
		$pageName   = 	$title[0]["name"];
				
		$this->load->view("header", array("page" => "Arrangementen", "pagetitle" => $pageName ));
		$this->load->view("arrCat_items", array("name" => $data));    		
		$this->load->view("footer");
			
	}
	
	/*
	 * 
	 * Public function item()
	 * 
	 * Will display an arrangementen item.
	 * 
	 */
	
	public function item()
	{
		$link = $this->uri->segment(3,0);
		
		$data   =  $this->Arrangementen_model->getArrangementItem($link);

		$this->load->view("header", array("page" => "noTitle"));
		$this->load->view("arrangement_item", array("name" => $data[0]));    		
		$this->load->view("footer");
		
	} 
	
}

?>