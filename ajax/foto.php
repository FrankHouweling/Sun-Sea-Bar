<?php

	
	if( $_POST['richting'] == "next" )
	{
		
		// Next
		
		
		$fotos	=	array( "client/img/bg1.jpg", "client/img/bg2.jpg" );

		echo $fotos[rand(0,count($fotos)-1)];
		
		
	}
	else
	{
		
		
		$fotos	=	array( "client/img/bg1.jpg", "client/img/bg2.jpg" );

		echo $fotos[rand(0,count($fotos)-1)];
		
		
	}

?>