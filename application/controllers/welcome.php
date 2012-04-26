<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct()
	{
	
		parent::__construct();
		$this->load->model('Welcome_method');
		
	}
	
	/*
	 * 
	 * Public function index()
	 * 
	 * Will display the homepage with in the background a beautifull image
	 *
	 *
	 */
	
	 
	public function index()
	{
		
		// TODO
		
		$this->load->view( "homepage", array("bgimg"=>$this->bgimg()) );
		
	}
	
	
	/*
	 * 
	 * Public function bgimg( $id = 0 )
	 * 
	 * Will return the image with the given ID. This URL will be called in the CSS file as a background source. 
	 * 
	 * 
	 */
	
	public function bgimg( $id = 0 )
	{
		
		if( isset($_POST['richting']) )
		{
			
			// AJAX!
			
			$new	= $this->Welcome_method->getRandomImg( false, $this->session->userdata('last') );
			
			$this->session->set_userdata( array("last"=>$new) );
			
			echo $new;
			
		}
		else
		{
			
			// Eerste foto pakken
			
			$foto	=	$this->Welcome_method->getRandomImg( true );
			
			$this->session->set_userdata( array("last"=>$foto) );
			
			return $foto;
			
		}
		
		
	}
	 
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */