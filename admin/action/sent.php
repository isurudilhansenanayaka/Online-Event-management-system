<?php

$no=$_POST['id'];
$cname= $_POST['cname'];
$cemail=$_POST['cemail'];
$quantity=$_POST['quantity'];
$payment=$_POST['payment'];
$EventName=$_POST['in'];
$db = mysqli_connect("localhost", "root", "", "event");
$sql="UPDATE customerorders SET status=1  WHERE OrderNo='$no'";
mysqli_query($db, $sql);
$sub="Your Oder has been dispatch";
$msg = "Hello ".$cname.",\n\nThank you for be with Oriflame Sweden\n\nOrder Number-".$no."\nItem Name-".$EventName."\nQuantity- ".$quantity."\n
Due Payment- ".$payment.".00\n\nYou will recieve the pack within next 3 days. If not Contact Us.\n\nThak you and have a Nice Day
\nBest Regards,\nOriflame Sweden.0117589456";

mail($cemail,$sub,$msg);
header("location: http://localhost/Online-Event-management-system/admin/viewOrder.php");

 ?>
