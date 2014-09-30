<?php 

class SiteConfigExtension extends DataExtension{
	
	 static $db = array(
	 	'Address' => 'Varchar',
	 	'City' => 'Varchar',
	 	'State' => 'Varchar',
	 	'Zip' => 'Varchar',
	 	'Phone' => 'Varchar',
	 	'Fax' => 'Varchar'
    );
    
     static $many_many = array(
        'BackgroundImages' => 'GalleryImage'
    );

	public function updateCMSFields(FieldList $fields) {
 		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		//$gridFieldConfig->addComponent(new GridFieldBulkEditingTools());
		$gridFieldConfig->addComponent(new GridFieldBulkImageUpload());
		//$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));

		$gridfield = new GridField("BackgroundImages", "Background Images", SiteConfig::get()->First()->BackgroundImages(), $gridFieldConfig);

		$fields->addFieldToTab('Root.BackgroundImages', $gridfield);
		$fields->addFieldToTab('Root.MainAddress', new TextField('Address','Address'));
		$fields->addFieldToTab('Root.MainAddress', new TextField('City','City'));
		$fields->addFieldToTab('Root.MainAddress', new TextField('State','State'));
		$fields->addFieldToTab('Root.MainAddress', new TextField('Zip','Zip'));
		$fields->addFieldToTab('Root.MainAddress', new TextField('Phone','Phone'));
		$fields->addFieldToTab('Root.MainAddress', new TextField('Fax','Fax'));

	}
}

?>