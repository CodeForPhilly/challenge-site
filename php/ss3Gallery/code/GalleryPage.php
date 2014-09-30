<?php

class GalleryPage extends Page {
	
	public static $has_many = array(
    	'GalleryImages' => 'GalleryImage'
  	);
  
   public function getCMSFields() {
	   
   		$fields = parent::getCMSFields();
		
			$gridFieldConfig = GridFieldConfig_RecordEditor::create(); 
			$gridFieldConfig->addComponent(new GridFieldBulkEditingTools());
			$gridFieldConfig->addComponent(new GridFieldBulkImageUpload());   
			$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));    
	
			$gridfield = new GridField("GalleryImages", "Gallery Images", $this->GalleryImages()->sort("SortOrder"), $gridFieldConfig);
				
			$fields->addFieldToTab('Root.GalleryImages', $gridfield);
		
		return $fields;
		
  }

}
class GalleryPage_Controller extends Page_Controller {
	
	public static $allowed_actions = array (
	);
	
	public function GetGalleryImages() {
		return $this->GalleryImages()->sort("SortOrder");
	}

	public function init() {
		parent::init();
		
		Requirements::css('ss3Gallery/css/ss3Gallery.css');
		Requirements::javascript('framework/thirdparty/jquery/jquery.js');
		Requirements::javascript('ss3Gallery/javascript/ss3Gallery.js');
	}

}