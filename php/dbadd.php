<?php
	
	//connect to database
	include "dbconnect.php";

	//add to database
	$getName = $_GET['eventName'];
	$getDate = $_GET['eventDate'];
	$getTime = $_GET['eventTime'];
	$getPlace = $_GET['eventPlace'];
	$getDesc = $_GET['eventDesc'];


	$eventName = $db->escape_string($getName);
	$eventDate = $db->escape_string($getDate);
	$eventTime = $db->escape_string($getTime);
	$eventPlace = $db->escape_string($getPlace);
	$eventDesc = $db->escape_string($getDesc);

	$sqlIn = "INSERT INTO event (eventName, eventDate, eventTime, eventPlace, eventDesc) VALUES ('$eventName', '$eventDate', '$eventTime', '$eventPlace', '$eventDesc')";

	if(!mysqli_query($db, $sqlIn)) {
		die('There was an error running the query (' . $db->error . ')');
	}

	$db->close();

	header('Location: ../gesall.html');

?>