<?php

define('SS_ENVIRONMENT_TYPE', 'dev');

$host='<db-host>';
$port='3306';
$user='dbUser';
$pass='dbPass' ;
$repo_dir = (getenv('OPENSHIFT_REPO_DIR')) ? getenv('OPENSHIFT_REPO_DIR') : putenv('OPENSHIFT_REPO_DIR= /path/to/repo') ;


define('SS_DATABASE_SERVER', $host);
define('SS_DATABASE_PORT', $port);
define("SS_DATABASE_USERNAME", $user);
define('SS_DATABASE_PASSWORD', $pass);

define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
define('SS_DEFAULT_ADMIN_PASSWORD', 'password1');


global $_FILE_TO_URL_MAPPING;
$_FILE_TO_URL_MAPPING[getenv('OPENSHIFT_REPO_DIR').'php'] = 'http://'.getenv('OPENSHIFT_APP_NAME').'-'.getenv('OPENSHIFT_NAMESPACE').'.'.getenv('OPENSHIFT_CLOUD_DOMAIN');
$_FILE_TO_URL_MAPPING['/Users/toby/melle/us/phl/challenge/'.'php'] = 'http://challenge.phl.io';
