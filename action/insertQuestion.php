<?php
	$db=mysqli_connect("localhost","root",'');
	mysqli_select_db($db,'event');

	$store = $_POST["store"];
	$EventName = $_POST["Eventname"];
	$EventCode= $_POST["EventCode"];
  $customerName= $_POST["cname"];
  $customerEmail = $_POST["cemail"];
  $q=$_POST["quantity"];
	$quantity = (int)$_POST["quantity"];
  $price=(int)$_POST["price"];
  $payment=(string)($price*$quantity);
  $cno=$_POST['cno'];
  $address=$_POST['address'];
	if($_POST["submit"]) {
		$sql = "INSERT INTO customerorders VALUES (0,'$store','$EventCode','$EventName','$customerName','$customerEmail','$cno','$address','$q','$payment',0)";

		if(mysqli_query($db,$sql)) {
			echo "Done";
      header("location: ../home.php");
		}else{
		echo "Fail";
	}
}
?>
