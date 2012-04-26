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

		public function getRandomImg( $forBg = false, $lastimage = "dinges" )
		{
			
			if( $forBg == true )
				$query 	= $this->db->query("SELECT image_path FROM images WHERE default_homepage_image = 1 AND image_path != '" . mysql_real_escape_string($lastimage) . "' ORDER BY RAND()");
			else
				$query 	= $this->db->query("SELECT image_path FROM images WHERE image_path != '" . mysql_real_escape_string($lastimage) . "' ORDER BY RAND()");
			
			$result	= $query->result_array(); 
			
			if( count($result) == 0 )
				return false;
			else				
				return $result[0]["image_path"];
			
		}

	}

?>