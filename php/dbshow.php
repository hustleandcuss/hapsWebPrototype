<?php

	header('Content-type: application/json');

	//connect to database
	include "dbconnect.php";

	$today = date("Y-m-d");

	//show from database
	$sqlOut = "SELECT*FROM event WHERE eventDate >= '$today' ORDER BY eventDate ASC";

	if(!$result = mysqli_query($db, $sqlOut)) {
		die('There was an error running the query (' . $db->error . ')');

	}

	$to_encode = array();
	while($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {
		array_push($to_encode, $row);

	}

	echo json_encode($to_encode);
	
	$result->free();

?>