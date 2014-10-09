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
	<% require themedCSS('ripples.min') %>
	<% require css('http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css') %>
	<% require themedCSS('material-wfont.min') %>
	<link href="//fezvrasta.github.io/snackbarjs/dist/snackbar.min.css" rel="stylesheet">
	<link rel="shortcut icon" href="{$ThemeDir}/images/favicon.ico" />
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="$ThemeDir/js/html5shiv.js"></script>
      <script src="$ThemeDir/js/respond.min.js"></script>
    <![endif]-->
    
</head>
<body itemscope itemtype="http://schema.org/Blog">
	
		<div class="container">
			<div class="row" ng-app="challengeApp">
				<div class="col-md-6 col-md-offset-3 site">
				
				
						<div class="site-title">
							<h2 id="pageTitle" data-id="$PageID" data- itemprop="name">$Title</h2>
						</div><! --/site top -->
						
						$Layout
							
						<div class="site-footer">
							<p><a href="/">Home</a> | <a href="http://www.codeforphilly.org">Code for Philly</a> | <a href="//github.com/CodeforPhiladelphia/challenges"><i class="fa fa-github fa-lg"></i>&nbsp;</a></p>
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

<%-- See mysite/code/page.php For all included javascript files --%>

</body>
</html>
