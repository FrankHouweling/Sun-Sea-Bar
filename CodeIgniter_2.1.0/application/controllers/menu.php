<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Menu extends CI_Controller {

	public function index()
	{
		$this->load->view('welcome_message');
	}
}

?>