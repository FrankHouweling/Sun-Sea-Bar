<?php

	class Welcome_method extends CI_Model {
		
		function __construct()
	    {
	        // Call the Model constructor
	        parent::__construct();
	    }

		/*
		 * 
		 * Public function getRandomBgImgId( $forBg = false )
		 * 
		 * Returns a random image his ID. $forHomepage at true will only give images which are allowed to be displayed at the background of the website.
		 * 
		 */

		public function getRandomImgId( $forBg = false )
		{
			
			if( $forBg == true )
				$query 	= $this->db->query("SELECT id FROM images WHERE default_homepage_image = 1 ORDER BY RAND()");
			else
				$query 	= $this->db->query("SELECT id FROM images ORDER BY RAND()");
			
			$result	= $query->result_array(); 
			
			if( count($result) == 0 )
				return false;
			else				
				return $result[0]["id"];
			
		}
  
	}

?>