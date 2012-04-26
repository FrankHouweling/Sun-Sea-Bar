<!doctype>
<html>
	
	<head>
		
		<title>
			Sun Sea Bar - Home
		</title>
		
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
		
		<link rel="stylesheet" href="client/css/screen.css" />
		
		<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>

		<script type="text/javascript">
			
						
			$(window).resize(function() {
				doeResize( );
			});
		
			function doeResize()
			{
				
				$("#menuopen #left").css("width", ( ($(window).width() - 317) / 2 ) );
				
			
				$("#menuopen #right").css("width", ( ($(window).width() - 317) / 2 ) );
				
			 	
				
			}
			
		</script>
		
	</head>
	
	<body onload="doeResize();">
		
		<img src="client/img/bg.jpg" id="bgfoto" alt="" />
		
		<div id="ticker">
			
			<div id="leftfade">
				<p>
					22 &#176;C
				</p>
				<img src="client/img/icon/sun.gif" alt="Zonnig" />
			</div>
			
			<div id="content">
				<p>Dit is bijv. een twitterbericht die wordt weergegeven...</p>
			</div>
			
			<div id="rightfade">
				<p><img src="client/img/icon/twitter.gif" alt="Twitter" /></p>
			</div>
			
		</div>
		
		<div id="header">
			
			<img src="client/img/logo.png" alt="SunSeaBar" />
			
		</div>
		
		<div id="nav">
			
			<a onclick="">
				<img src="client/img/navbuttonleft.png" id="left" alt="Vorige foto" />
			</a>
			
			<a onclick="">
				<img src="client/img/navbuttonright.png" id="right" alt="Volgende foto" />
 			</a>
			
		</div>
		
		<div id="menuopen">
			<div id="left"></div>
			<a href="hoofdmenu/"><img src="client/img/menu-button.png" alt="Menu Button" /></a>
			<div id="right"></div>
		</div>
		
	</body>
	
</html>