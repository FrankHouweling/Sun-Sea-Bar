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

		<meta name="apple-mobile-web-app-capable" content="yes" />  
		<!--<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> -->
		<meta name="viewport" content = "width = device-width, initial-scale = 1, minimum-scale = 1, maximum-scale = 1" />  

		<link rel="apple-touch-icon" href="client/img/icon.png"/>  

		<script type="text/javascript">
			
			active = 1;
						
			$(window).resize(function() {
				doeResize( );
			});
		
			function doeResize()
			{
				
				$("#menuopen #left").css("width", ( ($(window).width() - 317) / 2 ) );
				
			
				$("#menuopen #right").css("width", ( ($(window).width() - 317) / 2 ) );
				
			 	
				
			}
			
			function changeFoto( dinges, auto )
			{

				$.ajax({
				  type: "POST",
				  url: "index.php/welcome/bgimg/",
				  data: { richting: dinges }
				}).done(function( foto ) {
				
					if( active == 1 )
					{
						
						$("#bgfoto2").attr("src", foto );
						
						$("#bgfoto1").fadeOut();
						
						active = 2;
						
					}
					else
					{
						
						$("#bgfoto1").attr("src", foto );
						
						$("#bgfoto1").fadeIn();
						
						active = 1;
						
					}
					
					if( auto == true )
					{
						
						window.setTimeout( "changeFoto('next', true);", 15000 );
						
					}
				
				});
				
				
			}
			
			window.setTimeout( "changeFoto('next', true);", 15000 );
			
			
			
		</script>
		
	</head>
	
	<body onload="doeResize();">
		
		<img src="<?php echo $bgimg?>" id="bgfoto2" alt="" />
		
		<img src="<?php echo $bgimg?>" id="bgfoto1" alt="" />
		
		<div id="ticker">
			
			<div id="leftfade">
				<p>
					22 &#176;C
				</p>
				<img src="client/img/icon/sun.gif" alt="Zonnig" />
			</div>
			
			<div id="content">
				<p>Dit is bijv. een twitterbericht die wordt...</p>
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
				<img src="client/img/navbuttonleft.png" onclick="changeFoto('last', false)" id="left" alt="Vorige foto" />
			</a>
			
			<a onclick="">
				<img src="client/img/navbuttonright.png" onclick="changeFoto('next', false)" id="right" alt="Volgende foto" />
 			</a>
			
		</div>
		
		<div id="menuopen">
			<div id="left"></div>
			<a href="hoofdmenu/"><img src="client/img/menu-button.png" alt="Menu Button" /></a>
			<div id="right"></div>
		</div>
		
	</body>
	
</html>