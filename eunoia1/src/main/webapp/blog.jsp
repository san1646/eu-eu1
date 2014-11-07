<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="java.util.Properties" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!-- Consider adding a manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<%  
			  Properties propTitles = new Properties();		     
			propTitles.load(getServletContext().getResourceAsStream("/WEB-INF/eu1-titles.properties"));			  ///WEB-INF/
			  Properties propLinks = new Properties();		     
			  propLinks.load(getServletContext().getResourceAsStream("/WEB-INF/eu1-links.properties"));			  ///WEB-INF/
			%>
	
		<title><%= propTitles.getProperty("titleName") %> |  <%= propTitles.getProperty("personalQuote") %></title>
	<meta name="description" content="">
	
	<!-- Mobile viewport optimized: h5bp.com/viewport -->
	<meta name="viewport" content="width=device-width">
	
	<link rel="icon" type="image/png"  href="/img/favicon.ico">
	<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
	<link rel="stylesheet" href="css/nivo-slider.css" media="all"  /> 
	<link rel="stylesheet" href="css/tweet.css" media="all"  />
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" media="all" href="css/lessframework.css"/>
	
	
	<!-- All JavaScript at the bottom, except this Modernizr build.
	   Modernizr enables HTML5 elements & feature detects for optimal performance.
	   Create your own custom Modernizr build: www.modernizr.com/download/ -->
	<script src="js/modernizr-2.5.3.min.js"></script>
</head>
<body>
	
	<!-- WRAPPER -->
	<div class="wrapper cf">
		<header class="cf">
			
			<!-- social-bar -->
			<div id="social-bar-holder">
				<ul id="social-bar" class="cf">
					
					
					<li class="facebook"><a href="<%= propLinks.getProperty("facebook") %>"  title="Facebook" ></a></li>
					<li class="linkedin"><a href="<%= propLinks.getProperty("linkedin") %>"  title="forrst" ></a></li>
					<li class="googleplus"><a href="<%= propLinks.getProperty("googleplus") %>"  title="googleplus" ></a></li>
					<li class="twitter"><a href="<%= propLinks.getProperty("twitter") %>"  title="twitter" ></a></li>
				</ul>
			</div>
			<div class="cf"></div>
			<!-- ENDS social-bar -->
			
			<div id="logo" class="cf">
				<a href="index.html" ><img src="img/logo.png" alt="" /></a>
			</div>
			
			<!-- nav -->
			<nav class="cf">
				<ul id="nav" class="sf-menu">
					<li><a href="index.html"><span>HOME</span></a></li>
					<li><a href="page.html"><span>FEATURES</span></a>
						<ul>
							<li><a href="page.html">Columns</a></li>
							<li><a href="page-typography.html">Typography</a></li>
							<li><a href="page-elements.html">Elements</a></li>
							<li><a href="page-sidebar.html">Sidebar Page</a></li>
						</ul>
					</li>
					<li class="current-menu-item"><a href="blog.html"><span>BLOG</span></a></li>
					<li><a href="portfolio.html"><span>WORK</span></a></li>
					<li><a href="contact.html"><span>CONTACT</span></a></li>
					
				</ul>
				<div id="combo-holder"></div>
			</nav>
			<!-- ends nav -->
			
		</header>
		
		
		<!-- MAIN -->
		<div role="main" id="main" class="cf">
			
			<!-- posts list -->
			<div id="posts-list" class="cf"> 
			
				<article class="cf">
					<div class="feature-image">
						<a href="single.html" ><img src="img/dummies/672x400a.jpg" alt="Thumbnail" /></a>
					</div>
					<div class="entry-left-data">
						<div class="entry-date"><span class="m">JAN</span><span class="d">23</span></div>
						<a href="single.html#comments" class="comments">161</a>
					</div>
					
					<div class="entry-right-data">
						<a href="single.html" class="post-heading" >Raison d'être</a>
						<div class="meta">
							<span class="user"><a href="#">By Sanket, </a></span>
							<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
						<div class="excerpt">
							  <%= propTitles.getProperty("blogBlockQuote") %>
						</div>	
						<a href="single.html" class="link-button">Read More</a>	
					</div>
				</article>
				
				<article class="cf">
					<div class="feature-image">
						<a href="single.html" ><img src="img/dummies/672x400b.jpg" alt="Thumbnail" /></a>
					</div>
					<div class="entry-left-data">
						<div class="entry-date"><span class="m">JAN</span><span class="d">23</span></div>
						<a href="single.html#comments" class="comments">161</a>
					</div>
					
					<div class="entry-right-data">
						<a href="single.html" class="post-heading" >LOREM IPSUM DOLOR</a>
						<div class="meta">
							<span class="user"><a href="#">By Sanket, </a></span>
							<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
						<div class="excerpt">
							Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. 
						</div>	
						<a href="single.html" class="link-button">Read More</a>	
					</div>
				</article>
				
				<article class="cf">
					<div class="feature-image">
						<a href="single.html" ><img src="img/dummies/672x400c.jpg" alt="Thumbnail" /></a>
					</div>
					<div class="entry-left-data">
						<div class="entry-date"><span class="m">JAN</span><span class="d">23</span></div>
						<a href="single.html#comments" class="comments">161</a>
					</div>
					
					<div class="entry-right-data">
						<a href="single.html" class="post-heading" >LOREM IPSUM DOLOR</a>
						<div class="meta">
							<span class="user"><a href="#">By Sanket, </a></span>
							<span class="tags"><a href="#">red</a>, <a href="#">cyan</a>, <a href="#">white</a>, <a href="#">blue</a></span>
							</div>
						<div class="excerpt">
							Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. 
						</div>	
						<a href="single.html" class="link-button">Read More</a>	
					</div>
				</article>
				
				
				<!-- page-navigation -->
				<div class="page-navigation cf">
					<div class="nav-next"><a href="#">Older Entries</a></div>
					<div class="nav-previous"><a href="#">Newer Entries</a></div>
				</div>
				<!--ENDS page-navigation -->
					
						
		    </div>
			<!-- ENDS posts list -->			
			
			<!-- sidebar -->
        	<aside id="sidebar">
        		
        		<ul>
	        		
	        		<li class="block">
	        			<div class="sidebar-top"></div>
		        		<div class="sidebar-content">
			        		<h4 class="heading">Sponsors</h4>
			        		
						<!-- 	<div class="ads cf">
								<a href="http://themeforest.net/user/Ansimuz/portfolio?ref=ansimuz"><img src="img/dummies/banner-tf.gif" alt="Thumbnail"></a>
								<a href="http://www.mojo-themes.com/?r=ansimuz" class="last" ><img src="img/dummies/banner-mt.jpeg" alt="Thumbnail"></a>
								<a href="http://templatecreme.com/list/"><img src="img/dummies/banner-tp.jpeg" alt="Thumbnail"></a>
								<a href="http://themeforest.net/user/Ansimuz/portfolio?ref=ansimuz" class="last"><img src="img/dummies/banner-tf.gif" alt="Thumbnail"></a>
							</div>
							 -->
						</div>
						<div class="sidebar-bottom"></div>
	        		</li>
	        		
	        		<li class="block">
			        	<div class="sidebar-top"></div>
		        		<div class="sidebar-content">
		        			<h4 class="heading">Things I ponder</h4>
							Although, I do not have a say in the US elections, but I am keenly following them. It would be interesting to see how the Democrats respond to 
							the rising international challenges of ISIS, Ebola and domestic problems such as healthcare and economy. Also, who the Republicans will project 
							a strong unifying personality for the 2016 Presidential elections?
						</div>
						<div class="sidebar-bottom"></div>
	        		</li>
	        		
	        		<li class="block">
	        			<div class="sidebar-top"></div>
		        		<div class="sidebar-content">
			        		<h4 class="heading">Categories</h4>
							<ul>
								<li class="cat-item"><a href="#" title="title">Film and video<span class="post-counter"> (2)</span></a></li>
								<li class="cat-item"><a href="#" title="title">Print<span class="post-counter"> (2)</span></a></li>
								<li class="cat-item"><a href="#" title="title">Photo and lomo<span class="post-counter"> (2)</span></a></li>
								<li class="cat-item"><a href="#" title="title">Habitant morbi<span class="post-counter"> (2)</span></a></li>
								<li class="cat-item"><a href="#" title="title">Film and video<span class="post-counter"> (2)</span></a></li>
								<li class="cat-item"><a href="#" title="title">Print<span class="post-counter"> (2)</span></a></li>
								<li class="cat-item"><a href="#" title="title">Photo and lomo<span class="post-counter"> (2)</span></a></li>
								<li class="cat-item"><a href="#" title="title">Habitant morbi<span class="post-counter"> (2)</span></a></li>
							</ul>
						</div>
						<div class="sidebar-bottom"></div>
		        	</li>
        		</ul>
        		
        	</aside>
			<!-- ENDS sidebar -->			
			
		</div>
		<!-- ENDS MAIN -->
		
		<footer>
		
			<!-- text message -->
			<div id="twitter-holder">
				<div class="ribbon-left"></div>
				<div class="ribbon">
					<div id="tweets-bar" class="tweet">
					
					<ul class="tweet_list">
						<li>
						<div class="tweet_time">Today</div>
						Sanket B.  <a href="<%= propLinks.getProperty("twitter") %>" >@p0nder0usPanda</a> </li>
					</ul>
					
					</div>
				</div>
				<div class="ribbon-right"></div>
			</div>
			<!-- ENDS text message -->
			
			
			<!-- widgets -->
			<ul  class="widget-cols cf">
				<li class="first-col">
					
					<div class="widget-block">
						<h4>RECENT POSTS</h4>
						<div class="recent-post cf">
							<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
							<div class="post-head">
								<a href="#">Pellentesque habitant morbi senectus </a><span> March 12, 2011</span>
							</div>
						</div>
						<div class="recent-post cf">
							<a href="#" class="thumb"><img src="img/dummies/54x54b.gif" alt="Post" /></a>
							<div class="post-head">
								<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
							</div>
						</div>
						<div class="recent-post cf">
							<a href="#" class="thumb"><img src="img/dummies/54x54c.gif" alt="Post" /></a>
							<div class="post-head">
								<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
							</div>
						</div>
					</div>
				</li>
				
				<li class="second-col">
					
					<div class="widget-block">
						<h4>ABOUT</h4>
						<p>Vintage Template it's completely free this means you don't have to pay anything <a href="http://luiszuno.com/blog/license" >read license</a>.</p> 
						
						<p>Placeholder images by <a href="http://twistedfork.me/" >Dan Matutina</a></p>
						<p>Visit <a href="http://templatecreme.com/" >Template Creme</a> and find the most beautiful free templates up to date.</p>
					</div>
					
				</li>
				
				<li class="third-col">
					
					<div class="widget-block">
						<h4>DUMMY TEXT</h4>
						<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. </p>
		     		</div>
		     		
				</li>
				
				<li class="fourth-col">
					
					<div class="widget-block">
						<h4>CATEGORIES</h4>
						<ul>
							<li class="cat-item"><a href="#" >Design</a></li>
							<li class="cat-item"><a href="#" >Photo</a></li>
							<li class="cat-item"><a href="#" >Art</a></li>
							<li class="cat-item"><a href="#" >Game</a></li>
							<li class="cat-item"><a href="#" >Film</a></li>
							<li class="cat-item"><a href="#" >TV</a></li>
						</ul>
					</div>
		     		
				</li>	
			</ul>
			<!-- ENDS widgets -->
			
			<!-- bottom -->
			<div id="bottom">
				<div id="widget-trigger-holder"><a id="widget-trigger" href="#" title="View More" class="poshytip"></a></div>
				<div id="content">HalfTone Theme by <a href="http://www.luiszuno.com" >luiszuno.com</a> </div>
			</div>
			<!-- ENDS bottom -->
			
		</footer>
		
		
	</div>
	<!-- ENDS WRAPPER -->
	
	<!-- JavaScript at the bottom for fast page loading -->
	
	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.7.1.min.js"><\/script>')</script>
	
	<!-- scripts concatenated and minified via build script -->
	<script src="js/custom.js"></script>
	
	<!-- superfish -->
	<script  src="js/superfish-1.4.8/js/hoverIntent.js"></script>
	<script  src="js/superfish-1.4.8/js/superfish.js"></script>
	<script  src="js/superfish-1.4.8/js/supersubs.js"></script>
	<!-- ENDS superfish -->
	
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.nivo.slider.js" ></script>
	<script src="js/css3-mediaqueries.js"></script>
	<script src="js/tabs.js"></script>
	<script  src="js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
	<!-- end scripts -->

</body>
</html>