<!doctype>
<html>
	
	<head>
		
		<title>
			Sun Sea Bar - Home
		</title>
		
		<base href="http://localhost/~frankhouweling/Sun-Sea-Bar/" />
		
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
		
		<link rel="stylesheet" href="client/css/screen.css" />

		<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>

		<meta name="apple-mobile-web-app-capable" content="yes" />  
		<!--<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> -->
		<meta name="viewport" content = "width = device-width, initial-scale = 1, minimum-scale = 1, maximum-scale = 1" />  

		<link rel="apple-touch-startup-image" href="client/img/preload.jpg" />  

		<link rel="apple-touch-icon" href="client/img/icon.png"/>  

		<script type="text/javascript">
			
			active = 1;
			
			current = 1;
						
			$(window).resize(function() {
				doeResize( );
			});
		
			function doeResize()
			{
				
				$("#menuopen #left, #menuclose #left").css("width", ( ($(window).width() - 317) / 2 ) );
				$("#menuopen #right, #menuclose #right").css("width", ( ($(window).width() - 317) / 2 ) +1 );
				
				
			}
			
			function changeTicker()
			{
				
				$.ajax({
				  url: "index.php/welcome/tickerItem"
				}).done(function( msg ) {
					$("#ticker #content p").html(msg);
					if( current = 1 )
					{
						$("#content #2").html(msg);
						$("#content #2").fadeIn("slow");
						$("#content #1").fadeOut("slow");
						current = 2
					}
					else
					{
						$("#content #1").html(msg);
						$("#content #1").fadeIn("slow");
						$("#content #2").fadeOut("slow");
						current = 1
					}
				});
				
				window.setTimeout( "changeTicker()", 9000 );
				
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
						
						$("#click-to-open").hide();
						
						// Slidedown
						
						if (window.navigator.userAgent.indexOf('iPhone') != -1)
						{
							
							if (window.navigator.standalone == true)
							{
								
								//alert( "Standalone!" );
								
							}
							else
							{
								
								$("#hoe-install").fadeIn('slow');
								$("#header").css("margin-top","30px");
								$("#hoe-install").slideDown('slow');
								
							}
							
						}
						
						window.setTimeout( "changeFoto('next', true);", 15000 );
						
					}
				
				});
				
				
			}
			
			window.setTimeout( "changeFoto('next', true);", 15000 );
			
			window.setTimeout( "changeTicker()", 9000 );
			
			
		</script>
		
	</head>
	
	<body onload="doeResize();$('#preloader').fadeOut('slow');">
		
		<?php
			if( !isset( $nopreload ) ){
		?>
			<img src="client/img/preload.jpg" style="position:absolute;z-index:9999;width:100%;height:100%;" id="preloader" alt="" />
		<?php
			}
		?>
		
		<img src="<?php echo $bgimg?>" id="bgfoto2" alt="" />
		
		<img src="<?php echo $bgimg?>" id="bgfoto1" alt="" />
		
		<div id="ticker">
			
			<div style="width:100%;height:30px;background-color:#000;display:none;" id="hoe-install">
				<p style="color:#fff;font-size:12px;text-align:center;padding:7px;">Plaats deze app op je homescreen.</p>
			</div>
			
			<div id="leftfade">
				<p>
					22 &#176;C
				</p>
				<img src="client/img/icon/sun.gif" alt="Zonnig" style="width:17px;height:16px;" />
			</div>
			
			<div id="content">
				<p id="1" style="position:absolute;z-index:999;"><?php echo $tickerItem ?></p>
				<p id="2" style="position:absolute;z-index:1000;display:none;">Alternative.</p>
			</div>
			
			<div id="rightfade">
				<p><a href="https://twitter.com/#!/sunseabarwaz" target="_blank"><img src="client/img/icon/twitter.gif" alt="Twitter" /></a></p>
			</div>
			
		</div>