<?php
class Page extends DataObject {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		return $fields;
	}

}
class Page_Controller extends Controller {

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
		'test','index','challenges'
	);
	 private static $url_handlers = array(
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

	public  function challenges($arguments){
		$params = $arguments->params();
		if($arguments->param('ID') != NULL){
			//check firebase for challenge
			$id = $arguments->param('ID');
			$c = $arguments->param('OtherID');
			if($id == 'create'){
				$fire = new Firebase('https://challengepost.firebaseio.com/','FjQ5I3J8gkpMNeNqvmcSBtglq7qQnSc0wvjSgPgz');
				$fire->set('challenges/'.$c.'/id',$c);
				print_r('New Challenge '.$c.' created!'.PHP_EOL);
			}
			

			//return $this->renderWith(array('Challenge','Page'));
		}
		var_dump($params);
	}

	public function index($arguments){
		$params = $arguments->params();
		if($arguments->param('ID') != NULL){
			$this->PageID = $arguments->param('ID');
			$c = $arguments->param('ID');
			//check for page
			$fire = new Firebase('https://challengepost.firebaseio.com/','FjQ5I3J8gkpMNeNqvmcSBtglq7qQnSc0wvjSgPgz');
			$d = $fire->get('challenges/'.$c.'/id');
			var_dump($d);
			var_dump($arguments->params());
			//return $this->renderWith(array('Challenge','Page'));
		}
		//return $this->renderWith(array('Home','Page'));
	}

}
