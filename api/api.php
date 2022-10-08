<?php
$s = $_GET['cmd'];
$myFile = "server.log";
$fh = fopen($myFile, 'a');
fwrite($fh, $s);
fclose($fh);
die();
?>
