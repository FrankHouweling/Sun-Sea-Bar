<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
<<<<<<< HEAD
=======
		#parent::__construct();
		//$this->load->model('Welcome_method');
>>>>>>> Commit
		
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
		
		echo "TODO!";
		
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
		$this->load->model('Welcome_method');
		
		// Is there a file ID given?
		
		if( $id == 0 )
		{
			
			$id	=	$this->Welcome_method->getRandomImgId( true );
			
		}
		
		
		echo $id;
		
	}
	 
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */