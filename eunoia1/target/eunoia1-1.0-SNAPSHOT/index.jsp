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
					<li class="current-menu-item"><a href="index.html"><span>HOME</span></a></li>
					<li><a href="page.html"><span>FEATURES</span></a>
						<ul>
							<li><a href="page.html">Columns</a></li>
							<li><a href="page-typography.html">Typography</a></li>
							<li><a href="page-elements.html">Elements</a></li>
							<li><a href="page-sidebar.html">Sidebar Page</a></li>
						</ul>
					</li>
					<li><a href="blog.jsp"><span>BLOG</span></a></li>
					<li><a href="portfolio.html"><span>WORK</span></a></li>
					<li><a href="contact.html"><span>CONTACT</span></a></li>
					
				</ul>
				<div id="combo-holder"></div>
			</nav>
			<!-- ends nav -->
			
		</header>
		
		
		<!-- MAIN -->
		<div role="main" id="main" class="cf">
		
		
		
			<!-- SLIDER -->
			<div class="slider-wrapper theme-halftone">
	            <div id="slider" class="nivoSlider">
	                <img src="img/dummies/slides/01.jpg" alt=""  />
	                <img src="img/dummies/slides/02.jpg" alt="" />
	                <img src="img/dummies/slides/03.jpg" alt="" />
	            </div>
	            <div class="slider-left"></div>
	            <div class="slider-right"></div>
	        </div>
			<!-- ENDS SLIDER -->
			
			
			<!-- headline -->
			<div class="headline">
			<%= propTitles.getProperty("centerQuote") %>  {<i>eunoia</i>: beautiful thinking}			
			</div>
			<!-- ENDS headline -->
			
  			
			<!-- featured -->
			<ul class="feature cf">
				<li>
					<a href="single.html" class="thumb" >
						<img src="img/dummies/t1.jpg" alt="Thumbnail" />
						<div class="img-overlay"><i class="icon-plus-sign"></i></div>
						<div class="date"><span class="m">November 2014</span><span class="d">09</span></div>
					</a>
					<a href="single.html"  class="excerpt"><%= propTitles.getProperty("pane1") %></a>
					<div class="categories"><a href="#" >webdesign, </a><a href="#" >print, </a><a href="#" >photo, </a></div>
				</li>
				
				<li>
					<a href="single.html" class="thumb" >
						<img src="img/dummies/t2.jpg" alt="Thumbnail" />
						<div class="img-overlay"><i class="icon-plus-sign"></i></div>
						<div class="date"><span class="m">November 2014</span><span class="d">09</span></div>
					</a>
					<a href="single.html"  class="excerpt"><%= propTitles.getProperty("pane2") %></a>
					<div class="categories"><a href="#" >webdesign, </a><a href="#" >print, </a><a href="#" >photo, </a></div>
				</li>
				
				<li>
					<a href="single.html" class="thumb" >
						<img src="img/dummies/t3.jpg" alt="Thumbnail" />
						<div class="img-overlay"><i class="icon-plus-sign"></i></div>
						<div class="date"><span class="m">November 2014</span><span class="d">09</span></div>
					</a>
					<a href="single.html"  class="excerpt"><%= propTitles.getProperty("pane3") %></a>
					<div class="categories"><a href="#" >webdesign, </a><a href="#" >print, </a><a href="#" >photo, </a></div>
				</li>
			</ul>
			<!-- ENDS featured -->
			
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
								<a href="#">My thoughts</a><span> November 04, 2014</span>
							</div>
						</div>
						<div class="recent-post cf">
							<a href="#" class="thumb"><img src="img/dummies/54x54b.gif" alt="Post" /></a>
							<div class="post-head">
								<a href="#"> Things I wish to see before I die</a><span> September 8, 2014</span>
							</div>
						</div>
						<div class="recent-post cf">
							<a href="#" class="thumb"><img src="img/dummies/54x54c.gif" alt="Post" /></a>
							<div class="post-head">
								<a href="#">Some random post</a><span> November 04, 2014</span>
							</div>
						</div>
					</div>
				</li>
				
				<li class="second-col">
					
					<div class="widget-block">
						<h4>ABOUT</h4>
						<p>Sanket's site created with the help from Halftone <a href="http://luiszuno.com/blog/license" >read license</a>.</p> 
						
						<p>Placeholder images by <a href="http://eunoia.in/contact.html" >San1646</a></p>
						<p>Visit <a href="http://eunoia.in" >Beautiful thinking</a> and find the most beautiful free thoughts!</p>
					</div>
					
				</li>
				
				<li class="third-col">
					
					<div class="widget-block">
						<h4>DUMMY TEXT</h4>
						<p><%= propTitles.getProperty("widgetBlock") %></p>
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
	
	
	<!-- scripts concatenated and minified via build script -->
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/custom.js"></script>
	
	<!-- superfish -->
	<script  src="js/superfish-1.4.8/js/hoverIntent.js"></script>
	<script  src="js/superfish-1.4.8/js/superfish.js"></script>
	<script  src="js/superfish-1.4.8/js/supersubs.js"></script>
	<!-- ENDS superfish -->
	
	<script src="js/jquery.nivo.slider.js" ></script>
	<script src="js/css3-mediaqueries.js"></script>
	<script src="js/tabs.js"></script>
	<script  src="js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
	<!-- end scripts -->

</body>
</html>