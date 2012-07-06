<br /> 
<?php	
//the following code extracts the agenda blocks of the http://www.sunseabar.nl/Agenda.aspx page
//TODO cache agenda each night... makes it a lot faster...

$html = file_get_contents('http://www.sunseabar.nl/Agenda.aspx'); 

$start = strpos($html, '<p>');

$end = strpos($html, '</p>', $start);

$paragraph = substr($html, $start, $end);

$agendaOutput = explode('Copyright', $paragraph);

echo $agendaOutput[0];


?>

	







