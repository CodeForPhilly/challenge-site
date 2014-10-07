<?php
class Page extends SiteTree {

	private static $db = array(
		'IconClass' => 'Varchar'
	);

	private static $has_one = array(
		'SectionBackgroundImage' => 'Image'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', new UploadField('SectionBackgroundImage','Section Background Image'),'MenuTitle');
		$fields->addFieldToTab('Root.Main', new TextField('IconClass','Icon Class'));
		
		return $fields;
	}

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
		'test'
	);

	public function test(){
		// $f = Folder::get()->filter(array('Title'=>'backgrounds'))->First();
		// $i = Injector::inst()->get('Image');
		// $i->inject($f->myChildren()->sort('RAND()')->First());
		// var_dump($i);exit;
		// return $f->myChildren()->sort('RAND()')->First()->Link();
	}
	public function backgroundimage(){
		return SiteConfig::get()->First()->BackgroundImages()->sort('RAND()')->First()->Image();
	}

	public function init() {
		parent::init();
		$f = Folder::get()->filter(array('Title'=>'backgrounds'))->First();
		if($f){
			$this->BackgroundImages = $f->myChildren()->sort('RAND()');
			$this->TopImage = $f->myChildren()->sort('RAND()')->First();
		}
		

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
	}

	public function index($arguments){
		$params = $arguments->params();
		if($arguments->param('ID' != NULL)){
			//check for page
			return $this->renderWith(array('Challenge','Page'));
		}
		var_dump($params);
	}

}
