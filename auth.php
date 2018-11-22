<?php
	//Start session
	session_start();

	//Check whether the session variable SESS_MEMBER_ID is present or not
	if(($_SESSION['email']=="")) {
		header("location: http://localhost/Online-Event-management-system/login.php");
		exit();
	}
?>
