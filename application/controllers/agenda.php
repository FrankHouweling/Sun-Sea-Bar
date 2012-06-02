<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Agenda extends CI_Controller {
	
	public function __construct()
   	{
   		
    	parent::__construct();
	}

	/*
	 * 
	 * Public function index()
	 * 
	 * Will display the agenda items of the SunSeaBar
	 * 
	 * 
	 */

	public function index()
	{

		$this->load->view("header", array("page" => "Agenda", "pagetitle" => "Agenda"));
		$this->load->view("agenda");    		
		$this->load->view("footer");
	
	}
}
?>