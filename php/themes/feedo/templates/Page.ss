<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title>$SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('bootstrap') %>
	<% require themedCSS('style') %>
	<% require themedCSS('ripples.min.css') %>
	<% require themedCSS('material-wfont.min.css') %>
	<link href="//fezvrasta.github.io/snackbarjs/dist/snackbar.min.css" rel="stylesheet">

	<% require themedCSS('font-awesome.min') %>
	<link rel="shortcut icon" href="{$ThemeDir}/images/favicon.ico" />
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="$ThemeDir/js/html5shiv.js"></script>
      <script src="$ThemeDir/js/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
  	<script src="https://cdn.embed.ly/jquery.embedly-3.1.1.min.js" type="text/javascript"></script>
  	<script src="https://cdn.firebase.com/js/client/1.0.21/firebase.js"></script>
	<script src="https://cdn.firebase.com/libs/angularfire/0.8.2/angularfire.min.js"></script>
</head>
<body itemscope itemtype="http://schema.org/Blog">
	
		<div class="container">
			<div class="row" ng-app="challengeApp" ng-controller="ChatCtrl">
				<div class="col-md-6 col-md-offset-3 site">
				
				
						<div class="site-title">
							<h2 id="pageTitle" data-id="$PageID" data- itemprop="name">$Title</h2>
							<meta itemprop="datePublished" content="2011-04-01">April 1, 2011</meta>
						</div><! --/site top -->
						
						$Layout
							
						<div class="site-footer">
							<p><a href="#">Home</a> | <a href="#">New Challenge</a> | <a href="#">All Challenges</a>  </p>
						</div>
					
				</div><!-- /col-md-6 -->
			</div><! --/row -->
		</div><! --/container -->
		        

        
<!-- ****************************************************************************************************************************************
FOOTER
********************************************************************************************************************************************* -->        
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->

<%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> --%>
    <script src="$ThemeDir/js/bootstrap.min.js"></script>
    <script src="$ThemeDir/js/jquery.backstretch.min.js"></script>
    <script src="$ThemeDir/js/ripples.min.js"></script>
    <script src="$ThemeDir/js/material.min.js"></script>
    <script src="//fezvrasta.github.io/snackbarjs/dist/snackbar.min.js"></script>

	<script src="//cdnjs.cloudflare.com/ajax/libs/noUiSlider/6.2.0/jquery.nouislider.min.js"></script>
    <script src="$ThemeDir/js/main.js"></script>

</body>
</html>
