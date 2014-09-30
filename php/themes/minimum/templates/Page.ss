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
	<% require themedCSS('main') %>
	<% require themedCSS('font-awesome.min') %>
	<% require themedCSS('layout') %>
	<link rel="shortcut icon" href="{$ThemeDir}/images/favicon.ico" />
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="$ThemeDir/js/html5shiv.js"></script>
      <script src="$ThemeDir/js/respond.min.js"></script>
    <![endif]-->
</head>
<body data-spy="scroll" data-offset="0" data-target="#theMenu">
		
	<!-- Menu -->
	<nav class="menu" id="theMenu">
		<div class="menu-wrap">
			
			<i class="icon-remove menu-close"></i>
			<div id="menu-list">
			<% loop $Menu(1) %>
			<% if First %>
			<a href="#home" class="smoothScroll">$MenuTitle</a>
			<% else %>
			<a href="#$URLSegment" class="smoothScroll">$MenuTitle</a>
			<% end_if %>
			<% end_loop %>

			<a href="#"><i class="icon-facebook"></i></a>
			<a href="#"><i class="icon-twitter"></i></a>
			<a href="#"><i class="icon-dribbble"></i></a>
			<a href="#"><i class="icon-envelope"></i></a>
			</div>
			<h1 class="logo"><a href="#home"><img width="165" src="$ThemeDir/img/logo.png"></a></h1>
		</div>
		
		<!-- Menu button -->
		<div id="menuToggle"><i class="icon-reorder"></i></div>
	</nav>
		$Form
		
	
	<!-- ========== HEADER SECTION ========== -->
	<section id="home" name="home"></section>
	<div id="headerwrap" style="background: #AAAAAA">
	<% with Page('home') %>
		<div class="container" id="home-content">
			<div class="logo">
				<a href="#latest"><img id="hot-image" width="105" src="$ThemeDir/img/hot.png">
				<img width="105" src="$ThemeDir/img/logo.png"></a>
			</div>
			<br>
			<div class="row">
				<h1>$SiteConfig.Title</h1>
				<br>
				<div class="col-lg-6 col-lg-offset-3">
				</div>
				

			</div>
			
		</div><!-- /container -->
	</div><!-- /headerwrap -->
	
	
	
	
	<!-- ========== ABOUT SECTION ========== -->
	<section id="homeabout" name="homeabout"></section>
	<div id="f">
		<div class="container">
			<div class="row">
				$Content
			</div>
		</div><!-- /container -->
	</div><!-- /f -->
	<% end_with %>

	<div class="sep about" data-stellar-background-ratio="0.5" style="background-image: url('$AbsoluteUrl{$TopImage.SetWidth(1700).Link()}');background-position: 50% -575.5px;"></div>
	<% with Page('about-us') %>
	<section id="$URLSegment" name="$URLSegment"></section>
	<div id="f">
		<div class="container">
			<div class="row centered">
				<h3>$Title</h3>
				<div class="col-lg-6 col-lg-offset-3">
					$Content
					
				</div><!-- col-lg-8 -->
			</div><!-- row -->
		</div><!-- container -->
	</div>	<!-- f -->
	<% end_with %>

	<div class="sep about" data-stellar-background-ratio="0.5" style="background-image: url('$AbsoluteUrl{$TopImage.SetWidth(1280).Link()}');background-position: 50% -575.5px;"></div>

	<% with Page('projects') %>
	<!-- ========== Projects SECTION ========== -->	
	<section id="$URLSegment" name="$URLSegment"></section>
	<div id="portfoliowrap">
	<div class="container">
		<div class="row mt centered">
			<h1>$Title</h1>
			<% loop Children %>
			<div class="col-lg-4 proc">
				<i class="fa fa-coffee"></i>
				<h3>$Title</h3>
				$Content
			</div>
			<% end_loop %>
		</div><!-- --/row ---->
	</div>
	</div>
	<% end_with %>

	<div class="sep about" data-stellar-background-ratio="0.5" style="background-image: url('$AbsoluteUrl{$BackgroundImages.First().SetWidth(1700).Link()}');background-position: 50% -575.5px;"></div>


	<!-- ========== CAROUSEL SECTION ========== -->	
	<% with Page('join-us') %>
	<section id="$URLSegment" name="$URLSegment"></section>
	<div id="f">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-6 col-lg-offset-3">
					<h3>$Title</h3>
					$Content
				</div><!-- col-lg-8 -->
				
			</div><!-- row -->
		</div><!-- container -->
	</div>	<!-- f -->
	<% end_with %>

	<div class="sep about" data-stellar-background-ratio="0.5" style="background-image: url('$AbsoluteUrl{$BackgroundImages.Last().SetWidth(1280).Link()}');background-position: 50% -575.5px;"></div>

	<% with Page('order') %>
	<!-- ========== CONTACT SECTION ========== -->
	<section id="$URLSegment" name="$URLSegment"></section>
	<div id="f">
		<div class="container">
			<div class="row">
				<h3>$Title</h3>
				<p class="centered"><i class="icon icon-circle"></i><i class="icon icon-circle"></i><i class="icon icon-circle"></i></p>
				
				<div class="col-lg-6 col-lg-offset-3">
					$Content
				</div>
			</div>
		</div>
	</div>
	<% end_with %>
<% include LatestWindow %>
<%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="$ThemeDir/js/jquery.min.js"></script>
    <script src="$ThemeDir/js/jquery.stellar.min.js"></script>
    <%-- <script src="$ThemeDir/js/modernizr.custom.js"></script> --%>
    <script src="$ThemeDir/js/classie.js"></script>
    <script src="$ThemeDir/js/bootstrap.min.js"></script>
    <script src="$ThemeDir/js/smoothscroll.js"></script>
	<script src="$ThemeDir/js/main.js"></script>

</body>
</html>
