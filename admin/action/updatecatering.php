<?php
  $db = mysqli_connect("localhost", "root", "", "event");
  $msg = "";
  $itemcode=$_POST['EventCode'];
  $itemname=$_POST['EventName'];
  $discription=$_POST['Discription'];
  $price=$_POST['Price'];

  if (isset($_POST['submit'])) {
    $image = $_FILES['image']['name'];
    $target = "images/".basename($image);
    $sql="UPDATE catering SET EventName='$Eventname' , Discription='$discription' , Price='$price' WHERE ItemCode='$itemcode'";
  	mysqli_query($db, $sql);

  	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "successfully Inserted";

  	}else{
  		$msg = "Failed";
  	}
    header("Location: http://localhost/Online-Event-management-system/admin/catering.php");
  }
?>
