<!doctype>
<html>
	
	<head>
		
		<title>
			Sun Sea Bar - Home
		</title>
		
		<base href="http://localhost/~maurice/Sun-Sea-Bar/" />
		
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
		
		<link rel="stylesheet" href="client/css/screen.css" />

		<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>

		<meta name="apple-mobile-web-app-capable" content="yes" />  
		<!--<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> -->
		<meta name="viewport" content = "width = device-width, initial-scale = 1, minimum-scale = 1, maximum-scale = 1" />  

		<link rel="apple-touch-startup-image" href="client/img/preload.jpg" />  

		<link rel="apple-touch-icon" href="client/img/icon.png"/>  

	</head>
	
<body>
	<div class="topbar">
				<?php
					if( $page == "noTitle" )
					{
						// don't show a title in this section!
						?>	
						<?php
					}
					else
					{
						?>
							<h2>
								<?php 
									if( strlen($pagetitle) > 20 )
									{
										echo substr($pagetitle,0,17) . "...";
									}
									else
									{
										echo $pagetitle;
									}
								?>
							</h2>
						<?php	
					}
				?>
		</div>