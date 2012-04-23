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
	 * Public function getMenuItems( $catID )
     *
     * show "results" (menu items) from menu_item
     *
     
    public function getMenuItems( $catID )
    {
         

         $result = $this->db->query("SELECT * FROM menu_item WHERE id = '" . $catID . "'");

	     return $result->result_array();
    
    } */
    
}

?>