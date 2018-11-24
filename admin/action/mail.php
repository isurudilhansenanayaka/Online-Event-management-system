<?php

$no=$_POST['QuestionNo'];
$cname= $_POST['name'];
$cemail=$_POST['email'];
$store=$_POST['store'];
$EventName=$_POST['Eventname'];
$question=$_POST['question'];
$answer=$_POST['answer'];
$db = mysqli_connect("localhost", "root", "", "event");
$sql="UPDATE question SET status=1  WHERE QuestionNo='$no'";
mysqli_query($db, $sql);

$sql2= "INSERT INTO answer VALUES ('$no', '$store','$EventName','$cname','$question','$answer')";
mysqli_query($db, $sql2);

$sub="Answer For your Question Related to ".$EventName.".";
$msg = "Hello ".$cname.",\n\n Thank you for be with Oriflame Sweden\n\n Item-".$EventName."\n\nQuestion- ".$question."\n\n
Answer- ".$answer.". \n\nIf you have more questions about the Item Dont Hesitate to Reply Us\n\nThak you and have a Nice Day
\nBest Regards,\nOriflame Sweden.";

mail($cemail,$sub,$msg);
header("location: http://localhost/Online-Event-management-system/admin/questions.php");

 ?>
