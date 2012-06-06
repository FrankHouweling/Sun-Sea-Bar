<br /> <br />
<?php	
// the following code extracts the agenda blocks of the http://www.sunseabar.nl/Agenda.aspx page


$html = file_get_contents('http://www.sunseabar.nl/Agenda.aspx'); 

$start = strpos($html, '<p>');

$end = strpos($html, '</p>', $start);

$paragraph = substr($html, $start, $end);

$agendaOutput = explode('Copyright', $paragraph);

echo $agendaOutput[0];



?>








