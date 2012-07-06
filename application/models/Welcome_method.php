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
		
		public function updateTicker()
		{
			
			
			$xmlstr	=	@file_get_contents("https://twitter.com/statuses/user_timeline/122095251.xml?count=10");
			
			$text	=	@simplexml_load_string($xmlstr);
			
			$berichten	=	array();
			
			if( count($text->status) > 0 ){
				foreach( $text->status as $ber )
				{
					
					$this->addToCache( $ber->text, $ber->id );
					
				}
			}
			
		}
		
		public function addToCache( $text, $id )
		{
			
			$get	=	$this->db->query("SELECT * FROM twittercache WHERE id = '" . $id . "' OR text = '" . mysqli::real_escape_string($text) . "'");
			
			$result	=	$get->result_array();
			
			if( count($result) == 0 AND str_replace("Vacature","",$text) == $text ){
				
				$this->db->query( "INSERT INTO twittercache( id, text ) VALUES('" . $id . "','" . mysqli::real_escape_string($text) . "')" );
			
			}
			
		}
		
		public function getAllTicker()
		{
			
			$query 	= $this->db->query("SELECT * FROM twittercache ORDER BY id DESC");
		
			$result	= $query->result_array(); 
			
			if( count($result) == 0 )
				return false;
			else				
				return $result;
			
		}
		
		public function getTickerItem( $item = 1 )
		{
			
			if( rand(0,70) == 1 )
			{
				$this->updateTicker();
			}
			
			$berichten	=	$this->getAllTicker();
			
			
			if( !isset($berichten[ $item-1 ]) )
			{
				return false;
			}
			
			return "<a href='https://twitter.com/#!/SunseabarWAZ/status/" . $berichten[ $item-1 ]["id"] . "' target='_blank'>" . substr($berichten[ $item-1 ]["text"],0,33) . "..</a>";
			
		}

	}

?>