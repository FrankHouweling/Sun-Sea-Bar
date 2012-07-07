<br /> 
<?php	
//the following code extracts the agenda blocks of the http://www.sunseabar.nl/Agenda.aspx page
// it's being cached with the CodeIgniter function $this->output->cache(n); in the controller, refreshes every 720 min.

$html = file_get_contents('http://www.sunseabar.nl/Agenda.aspx'); 

$start = strpos($html, '<p>');

$end = strpos($html, '</p>', $start);

$paragraph = substr($html, $start, $end);

$agendaOutput = explode('Copyright', $paragraph);

echo $agendaOutput[0];


?>

	







