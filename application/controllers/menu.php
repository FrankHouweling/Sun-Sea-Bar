<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Menu extends CI_Controller {
	
	public function __construct()
   	{
   		
    	parent::__construct();
		$this->load->model(Menu_model);
			
	}

	/*
	 * 
	 * Public function index()
	 * 
	 * Will display all menu catagories for navigation
	 * 
	 */

	public function index()
	{
	    $data = $this->Studies_model->getMenuCat();
		
		$this->load->view( "menu", array("name" => $data));    		
		
	}
	
	/*
	 * 
	 * Public function catagorie( $id )
	 * 
	 * Will display all subcatagories followed by the different items in the catagorie.
	 * 
	 */
	
	public function catagorie( $id )
	{
		
		// TODO
		
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