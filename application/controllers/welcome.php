<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	
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
		
		// Is there a file ID given?
		
		if( $id == 0 )
		{
			
			$id	=	$this->Welcome_method->getRandomBgImgId();
			// TODO still needs to be created...
			
		}
		
		// TODO display the image...
		
	}
	 
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */