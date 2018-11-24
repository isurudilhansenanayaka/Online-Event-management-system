<?php
	$db=mysqli_connect("localhost","root",'');
	mysqli_select_db($db,'event');

	$addv_title = $_POST["add_title"];
	$keytag = $_POST["keytag"];
	$area= $_POST["area"];
	$discription= $_POST["discription"];
	session_start();

	$owner_id = $_SESSION['id'];

	if($_POST["submit"]) {
		$sql = "INSERT INTO advertisement(keytag,titile,area,description,date) VALUES ('".$keytag."','".$addv_title."','".$area."','".$discription."','".date("Y-m-d")."')";
		echo $addv_title.$keytag.$area.$discription;
		if($db->query($sql)==TRUE) {
			///////////////////////////////////////////////////////////////////////////////////
			$sql1 = "SELECT MAX(addv_id) AS max FROM advertisement";
			if($result=mysqli_query($db,$sql1)){
				echo "Done";
				
			}else{
				echo "Error2". $db->error;
			}
			$row=mysqli_fetch_assoc($result);
			$AddvId=$row['max'];
			///////////////////////////////////////////////////////////////////////////////////
			$ImagePath='/addv_image/'.$AddvId.'.jpg';
			$sql_imagePath = "INSERT INTO addv_image VALUES ('".$AddvId."','".$ImagePath."')"; 
			if( mysqli_query($db,$sql_imagePath)){
				echo "Done";
			}else{
				echo "Error5". $db->error;
			}
			///////////////////////////////////////////////////////////////////////////////////
			$sql2= "INSERT INTO add_owner VALUES ('".$AddvId."','".$owner_id."')";
			if( mysqli_query($db,$sql2)){
				echo "Done";
				move_uploaded_file($_FILES["file"]["tmp_name"],'..'.$ImagePath);

				header("location: ../addv_add.php");
			}else{
				echo "Error3". $db->error;
			}
			////////////////////////////////////////////////////////////////////////////////////
		}else{
			echo "Error1".$db->error;
		}
	}
?>
