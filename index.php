<?php
	$file = 'countFile.txt';

	if(file_exists($file) && filesize($file) > 0) {
		$totVisits = file_get_contents($file);
	} else {
		$totVisits = 0;
	}

	$fp = fopen($file, 'wb');
	if(flock($fp, LOCK_EX)) {
		fwrite($fp, $totVisits + 1);
		fflush($fp);
		flock($fp, LOCK_UN);
	}

	header('Location: gesall.html');
?>