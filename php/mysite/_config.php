<?php

global $project;
$project = 'mysite';

global $database;
$database = 'challenge';

// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");

//SSViewer::setOption('rewriteHashlinks', false);

// Set the site locale
//SiteConfig::add_extension('SiteConfigExtension');

i18n::set_locale('en_US');
//SS_Log::add_writer(new SS_LogEmailWriter('admin@emelle.org'), SS_Log::ERR);
