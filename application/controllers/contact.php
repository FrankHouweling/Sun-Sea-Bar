<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends CI_Controller {
	
	public function __construct()
   	{
   		
    	parent::__construct();
		//$this->load->model("Openingstijden_model");	
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
	
	
	/*
	 * Public function getCurrentDate()
	 * 
	 * Will get the current date, time, day of the week, etc. for displaying if they are open
	 *	
	
	public function getCurrentDate()
	{
		// sets timezone to Amsterdam Europe
		date_default_timezone_set('Europe/Amsterdam');
 		// Prints something like: Saturday 19 May 2012 17:12:46 
		$currentDate = date('l j F Y G:i:s');
		$data = $currentDate;
		
		$this->load->view("header", array("page" => "Contact", "pagetitle" => "Contact" ));
		$this->load->view("contact", array("name" => $data));    		
		$this->load->view("footer");
		
	} */
	
}
?>