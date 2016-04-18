<?php

	//connect to database
	$userName = "root";
	$password = "";
	$database = "gesall";
	$host = "localhost";

	$db = mysqli_connect($host, $userName, $password, $database);

	if(!$db) {
		die('Connect Error (' . mysqli_connect_error() . ')');

	}

	if (!mysqli_set_charset($db, "utf8")) {
    	die("Error loading character set utf8: %s\n" . mysqli_error($db));
    	exit();
	}

?>