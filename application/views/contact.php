
<div class="content">
	
	<br />
	<?php echo "Voor reserveringen of vragen over al onze activiteiten en mogelijkheden kunt u ons bellen op onderstaande telefoonnummers." ?>
	<br /> <br />
	<?php echo"Beachclub SunSeaBar" ?>
	<br />
	<?php echo"R Aertszweg"?>
	<br />
	<?php echo"1949 BD Wijk aan Zee" ?>
	<br />
	<?php echo "The Netherlands" ?>
	<br /> <br />
	<?php echo "Telefoon Paviljoen:" ?>
	<br />
	<a href="tel:0031251375807">(0)251 - 375807</a>
	<br />
	<?php echo "Telefoon Kantoor:" ?>
	<br />
	<a href="tel:0620636974">(0)6 - 20636974</a>
	<br /> <br />
	<?php echo "Adres Kantoor" ?> 
	<br />
	<?php echo "Zeestraat 250" ?>
	<br />
	<?php echo "1949 AG Wijk aan Zee" ?>
	<br /> <br />
	<?php echo "E-mail:" ?>
	<br/>
	<a href="mailto:info@sunseabar.nl">info@sunseabar.nl</a>
	<br /> <br />
	
	<?php echo "Note: hieronder maken we nog een Google maps routeplanner evt. nog een linkje naar pagina waar ze brochure kunnen aanvragen, zie site..." ?>
	<br /> 
 
 	<?php
	date_default_timezone_set('Europe/Amsterdam');
	//verander de 'taal' van php
	//standaard use php english but if your want you can edit it to any other language. More info can be found at http://www.php.net
	setlocale(LC_TIME, 'NL_nl');
	//echo strftime('%A %e %B %Y %H:%M uur',time()); //example current time
	?> 
	<br />
	<?php
	// openingstijd van de dag, gebasseerd op welke dag het is en welke maand het is
	$winterMonths = array('november', 'december', 'januari','februari', 'maart');
	$summerMonths = array('april' , 'mei' , 'juni' , 'juli' , 'augustus' , 'september');
	
	if (in_array(strftime('%B', time()), $winterMonths)  AND in_array(strftime('%A', time()), array('vrijdag'))) {
		echo "We zijn vandaag geopend vanaf 12 uur"; }

	elseif (in_array(strftime('%B', time()), $winterMonths)  AND in_array(strftime('%A', time()), array('zaterdag' , 'zondag'))) {
		echo "We zijn vandaag geopend vanaf 10 uur"; }

	elseif (in_array(strftime('%B', time()), $summerMonths)) {
		echo 'We zijn vandaag geopend vanaf 10 uur'; }

	elseif (in_array(strftime('%B', time()), array('oktober')) AND in_array(strftime('%A', time()), array('donderdag' , 'vrijdag'))) {
		echo "We zijn vandaag geopend vanaf 12 uur"; }

	elseif (in_array(strftime('%B', time()), array('oktober')) AND in_array(strftime('%A', time()), array('zaterdag' , 'zondag'))) {
		echo "We zijn vandaag geopend vanaf 10 uur"; }

	else
		{ echo "We zijn vandaag helaas gesloten"; } 
	 
	 
	 ?>
	 <br /><br />
	<div class="routeplanner">
		<iframe src="geocodingExample.html" width="300px" height="250px" alt="routeplanner">			
		</iframe>
		
	</div>
</div>