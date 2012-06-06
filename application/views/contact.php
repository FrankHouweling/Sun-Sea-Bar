
<div class="content">
	<br />
	<strong><?php getOpeningTime() ?></strong>
	<br /> <br />
	<?php echo "Voor reserveringen of vragen over al onze activiteiten en mogelijkheden kunt u ons mailen of bellen op onderstaande telefoonnummers." ?>
	<br /> <br />
	<?php echo"Beachclub SunSeaBar" ?>
	<br />
	<?php echo"R Aertszweg"?>
	<br />
	<?php echo"1949 BD Wijk aan Zee" ?>
	<br />
	<?php echo "The Netherlands" ?>
	<br /> 
	<a href="tel:0031251375807" data-role="button" data-inline="true" data-theme="b">(0)251 - 375807</a>
	<br /> <br />
	<?php echo "Adres Kantoor" ?> 
	<br />
	<?php echo "Zeestraat 250" ?>
	<br />
	<?php echo "1949 AG Wijk aan Zee" ?>
	<br /> 
	<a href="tel:0620636974" data-role="button" data-inline="true" data-theme="b">(0)6 - 20636974</a>
	<br />
	<br/>
	<center><a href="mailto:info@sunseabar.nl" data-role="button" data-inline="true" data-theme="b">info@sunseabar.nl</a></center>
	<br /> <br />
	<center>
	<a href="http://maps.google.com/maps?daddr=52.491692,4.584196&saddr="Current%20Location"" data-role="button" data-inline="true" data-theme="b"> Routeplanner</a>
	</center>
	
	<?php
	function getOpeningTime() {
	date_default_timezone_set('Europe/Amsterdam');
	//verander de 'taal' van php
	setlocale(LC_TIME, 'NL_nl');
	//echo strftime('%A %e %B %Y %H:%M uur',time()); //example current time
	
	//openingstijd van de dag, gebasseerd op welke dag het is en welke maand het is
	$winterMonths = array('november', 'december', 'januari', 'februari', 'maart');
	$summerMonths = array('april', 'mei', 'juni', 'juli', 'augustus', 'september');
	
	if (in_array(strftime('%B', time()), $winterMonths) AND in_array(strftime('%A', time()), array('vrijdag'))) {
		echo "We zijn vandaag geopend vanaf 12 uur."; }

	elseif (in_array(strftime('%B', time()), $winterMonths) AND in_array(strftime('%A', time()), array('zaterdag' , 'zondag'))) {
		echo "We zijn vandaag geopend vanaf 10 uur."; }

	elseif (in_array(strftime('%B', time()), $summerMonths)) {
		echo 'We zijn vandaag geopend vanaf 10 uur.'; }

	elseif (in_array(strftime('%B', time()), array('oktober')) AND in_array(strftime('%A', time()), array('donderdag' , 'vrijdag'))) {
		echo "We zijn vandaag geopend vanaf 12 uur."; }

	elseif (in_array(strftime('%B', time()), array('oktober')) AND in_array(strftime('%A', time()), array('zaterdag' , 'zondag'))) {
		echo "We zijn vandaag geopend vanaf 10 uur."; }

	else
		{ echo "We zijn vandaag helaas gesloten."; } 
	
	}
	 ?>
	
</div>