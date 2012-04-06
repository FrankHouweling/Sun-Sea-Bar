<?php

class Background_model extends CI_Model {
		
		function __construct()
	    {
	        
	        // Call the Model constructor
	        parent::__construct();
	        
	    }

 	 
	   /**
    	*   Public function getBackgrounds
    	*
    	*   get all background pictures for the homepage from the database 
    	*/
	
		public function getBackgrounds() {
		
		$result = $this->db->query("SELECT * FROM Fotos WHERE InHomePageSlider == TRUE);

	    return $result->result_array();
		
		
		}


?>