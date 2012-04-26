<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Menu extends CI_Controller {
	
	public function __construct()
   	{
   		
    	parent::__construct();
		$this->load->model("Menu_model");
			
	}

	/*
	 * 
	 * Public function index()
	 * 
	 * Will display all menu catagories 
	 * 
	 * 
	 */

	public function index()
	{
	
	    $data = $this->Menu_model->getMenuCat();

		$this->load->view("header");
		$this->load->view( "menu", array("name" => $data));    		
		$this->load->view("footer");
	
	}
	
	/*
	 * 
	 * Public function catagorie( $catID )
	 * 
	 * Will display all subcatagories followed by the different items in the catagorie.
	 * 
	 */
	
	public function category( $catID )
	{
	
		$data = $this->Menu_model->getCatItems();
	
		$this->load->view("header");
		$this->load->view( "menu", array("title" => $data));    		
		$this->load->view("footer");
			
	}
	
	/*
	 * 
	 * Public function item( $id )
	 * 
	 * Will display a menu item.
	 * 
	 */
	
	public function item( $id )
	{
		
		// TODO
		
	}
	
}

?>