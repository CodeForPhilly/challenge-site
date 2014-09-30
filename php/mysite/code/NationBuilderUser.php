<?php
require('client.php');
require('GrantType/IGrantType.php');
require('GrantType/AuthorizationCode.php');

class NationBuilderUser extends Controller {

	private static $allowed_actions = array (
		'auth', 'callback'
	);


	public function init(){
		parent::init();
		$this->Title = 'AllenApp API';
	}



	public function callback($request){
		//Auth Service
		$CLIENT_ID     = getenv(NB_CLIENT_ID);
		$CLIENT_SECRET = getenv(NB_CLIENT_SECRET);

		$REDIRECT_URI           = 'https://allenapp-nationbuilder.rhcloud.com/nb/callback';
		$AUTHORIZATION_ENDPOINT = 'https://allen2014.nationbuilder.com/oauth/authorize';
		$TOKEN_ENDPOINT         = 'https://allen2014.nationbuilder.com/oauth/token';

		$client = new OAuth2\Client($CLIENT_ID, $CLIENT_SECRET);
		if (!isset($_GET['code'])) {
		    $auth_url = $client->getAuthenticationUrl($AUTHORIZATION_ENDPOINT, $REDIRECT_URI);
		    header('Location: ' . $auth_url);
		    die('Redirect');
		} else {
		    $params = array('code' => $_GET['code'], 'redirect_uri' => $REDIRECT_URI);
		    $response = $client->getAccessToken($TOKEN_ENDPOINT, 'authorization_code', $params);
		    parse_str($response['result'], $info);
		    $client->setAccessToken($info['access_token']);
		    $response = $client->fetch('');
		    var_dump($response, $response['result']);
		}
	}

	
    
}
