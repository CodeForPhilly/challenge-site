<?php

//$_SERVER['HTTP_HOST'] = $allowed_hosts;
//$_SERVER['REQUEST_METHOD'] = 'Get';
define('SS_ENVIRONMENT_TYPE', 'dev');
$host='melle.c0pz9rduf4ic.us-east-1.rds.amazonaws.com';
$port='3306';
$user='melleUser';
$pass='d3v-Emelle' ;
$repo_dir = (getenv('OPENSHIFT_REPO_DIR')) ? getenv('OPENSHIFT_REPO_DIR') : putenv('OPENSHIFT_REPO_DIR= /Users/toby/melle/us/phl/challenge/') ;


define('SS_DATABASE_SERVER', $host);
define('SS_DATABASE_PORT', $port);
define("SS_DATABASE_USERNAME", $user);
define('SS_DATABASE_PASSWORD', $pass);
define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
define('SS_DEFAULT_ADMIN_PASSWORD', 'sw0rdfish');


global $_FILE_TO_URL_MAPPING;
$_FILE_TO_URL_MAPPING[getenv('OPENSHIFT_REPO_DIR').'php'] = 'http://'.getenv('OPENSHIFT_APP_NAME').'-'.getenv('OPENSHIFT_NAMESPACE').'.'.getenv('OPENSHIFT_CLOUD_DOMAIN');
$_FILE_TO_URL_MAPPING['/Users/toby/melle/us/phl/challenge/'.'php'] = 'http://challenge-phl.us.melle.io';