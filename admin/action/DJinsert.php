<?php
  $db = mysqli_connect("localhost", "root", "", "event");
  $msg = "";
  $EventCode=$_POST['EventCode'];
  $EventName=$_POST['EventName'];
  $discription=$_POST['Discription'];
  $price=$_POST['Price'];

  if (isset($_POST['submit'])) {
    $image = $_FILES['image']['name'];
    $target = "images/".basename($image);
    $sql = "INSERT INTO dj VALUES ('$EventCode', '$EventName','$discription','$price','$image')";
  	// execute query
  	mysqli_query($db, $sql);

  	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "successfully Inserted";
      header("Location: http://localhost/Online-Event-management-system/admin/DJ.php");
  	}else{
  		$msg = "Failed";
  	}
  }
?>
