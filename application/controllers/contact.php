<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends CI_Controller {
	
	public function __construct()
   	{
   		
    	parent::__construct();
		//$this->load->model("Contact_model");	
	}

	/*
	 * 
	 * Public function index()
	 * 
	 * Will display the basic contact information of the SunSeaBar
	 * 
	 * 
	 */

	public function index()
	{

		$this->load->view("header", array("page" => "Contact", "pagetitle" => "Contact"));
		$this->load->view("contact");    		
		$this->load->view("footer");
	
	}
	
	
	
}
?>