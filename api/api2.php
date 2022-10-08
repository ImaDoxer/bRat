<?php 
$myFile = "server.log"; // Read the whole file into an array
unlink($myFile);
$fh = fopen($myFile, 'a');
fwrite($fh, "");
fclose($fh);
die();
?>
