<?php
class arrangementen_model extends CI_Model {

     public function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    
    /**
     * 
	 * Public function getArrCat()
     *
     * get arrangementen categories from arrangement_cat table on database
     */

    public function getArrCat()
    {
        
         $query = $this->db->get_where('arrangement_cat');
	     
	     return $query->result_array();
   
    }
    

    /**
     * 
	 * Public function getArrCatItems( $catID )
     *
     * show "results" (category items) from arrangement_item
     */
     
    public function getArrCatItems( $catID )
    {
         

        $result = $this->db->query("SELECT * FROM arrangement_item WHERE arrID = '" . $catID . "'");
        
	    return $result->result_array();
    
    } 
	
    
	/**
     * 
	 * Public function arrangementCatLinkToId($link)
     *
     * gets the right category items for given catID and returns the link
   	 */	  
   
   
   Public function arrangementCatLinkToId($link)
   {

		$result = $this->db->query("SELECT id FROM arrangement_cat WHERE link = '" . $link . "'");

		$resar	=	$result->result_array();

	    return $resar[0]["id"];
	
   }
   
   
    /**
     * 
	 * Public function getArrangementItem()
     *
     * get menu item from arrangement_item table on database
     */
   
   Public function getArrangementItem($link)
   {
   	
		$query = $this->db->query("SELECT * FROM arrangement_item WHERE link = '" . $link . "'");
	     
	    return $query->result_array();
	
   } 
   
   /**
    * Public function arrangementPageName($pageName)
    * 
    * gets the name/title of the page...
    * 
    */
   
   
   Public function arrangementPageName($pageName)
   {
   	
		$query = $this->db->query("SELECT name FROM arrangement_cat WHERE link = '" . $pageName . "'");
		
		return $query->result_array();
	
   }
}

?>