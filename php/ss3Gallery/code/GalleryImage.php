<?php
 
class GalleryImage extends DataObject {
 
  
  private static $db = array(	
	  'SortOrder' => 'Int',
	  'Title' => 'Varchar',
    'Description' => 'HTMLText'
  );
 
  // One-to-one relationship with gallery page
  private static $has_one = array(
    'Image' => 'Image',
    'GalleryPage' => 'GalleryPage'
  );

  private static $belongs_many_many = array(
    'SiteConfig' => 'SiteConfig'
  );
 
 // tidy up the CMS by not showing these fields
  public function getCMSFields() {
 		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","GalleryPageID");
		$fields->removeFieldFromTab("Root.Main","SortOrder");
    $fields->removeFieldFromTab("Root.Main","SiteConfig");
    $fields->addFieldToTab('Root.Main', new HTMLEditorField('Description', 'Description'));
		return $fields;		
  }
  
  // Tell the datagrid what fields to show in the table
   public static $summary_fields = array( 
     'ID' => 'ID',
	   'Title' => 'Title',
	   'Thumbnail' => 'Thumbnail'     
   );
  
  // this function creates the thumnail for the summary fields to use
   public function getThumbnail() { 
     return $this->Image()->CMSThumbnail();
  }
}