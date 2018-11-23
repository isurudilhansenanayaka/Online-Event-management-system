<?php

  $id=$_POST['id'];
  $sql = "DELETE FROM makeup WHERE EventCode='$id'";
  $db=mysqli_connect("localhost","root","") or die ("Error Occures");
  mysqli_select_db($db,"event") or die("Error Occures");
  mysqli_query($db, $sql);
  header("Location: http://localhost/Online-Event-management-system/admin/catering.php");

  ?>
