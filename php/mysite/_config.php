<?php

global $project;
$project = 'mysite';

global $database;
$database = 'challenge';

// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");
Director::setBaseURL('/');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
//SSViewer::setOption('rewriteHashlinks', false);
Security::setDefaultAdmin('admin','password1');
// Set the site locale
//SiteConfig::add_extension('SiteConfigExtension');
i18n::set_locale('en_US');
//SS_Log::add_writer(new SS_LogEmailWriter('admin@phillypolice.com'), SS_Log::ERR);
//SS_Log::add_writer(new SS_LogEmailWriter('admin@phillypolice.com'), SS_Log::WARN, '<=');
