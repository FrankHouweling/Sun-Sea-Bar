<?php
class menu_model extends CI_Model {

     public function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    
    /**
     * 
	 * Public function getMenuCat()
     *
     * get menu categories from menu_cat table on database
     */

    public function getMenuCat()
    {
        
         $query = $this->db->get_where('menu_cat');
	     
	     return $query->result_array();
   
    }
    

    /**
     * 
	 * Public function getCatItems( $catID )
     *
     * show "results" (category items) from menu_item
     */
     
    public function getCatItems( $catID )
    {
         

        $result = $this->db->query("SELECT * FROM menu_item WHERE catID = '" . $catID . "'");
        
        //echo "SELECT * FROM menu_item WHERE catID = '" . $catID . "'";
		//die();
	    return $result->result_array();
    
    } 
	
    
	/**
     * 
	 * Public function menuCatLinkToId($link)
     *
     * gets the right category items for given catID and returns the link
   	 */	  
   
   
   Public function menuCatLinkToId($link)
   {

		$result = $this->db->query("SELECT id FROM menu_cat WHERE link = '" . $link . "'");

		$resar	=	$result->result_array();

	    return $resar[0]["id"];
	
   }
   
   
   /**
     * 
	 * Public function menuCatIdToName($catName)
     *
     * gets the right category name for given catID and returns the name
   	 */
   	 
   Public function menuCatIdToName($name)
   {
   	
		$result = $this->db->query("SELECT id FROM menu_item WHERE catID = (SELECT id FROM menu_cat WHERE name = '" . $name . "')");

		$result->result_array();		
		
   } 
   
   
   /**
     * 
	 * Public function getMenuItem( $catID )
     *
     * show "result" (menu item) from menu_item
     */
     
    public function getMenuItem( $catID )
    {
         

         $result = $this->db->query("SELECT * FROM menu_item WHERE catID = '" . $catID . "'");

	     return $result->result_array();
    
    } 
}

?>