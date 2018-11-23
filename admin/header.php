<!DOCTYPE html>
<?php
$db = mysqli_connect("localhost", "root", "", "event");
$sql="SELECT * FROM question WHERE status=0";
$result=mysqli_query($db, $sql);
$number=mysqli_num_rows($result);
 ?>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../css/navigation.css">
    <title>Event Management System</title>
    <center>
      <h1>Event Management System</h1>
    </center>
  </head>

  <body>
    <ul>
      <li><a href="catering.php">Catering</a></li>
      <li><a href="saloon.php">Saloons</a></li>
      <li><a href="DJ.php">DJ</a></li>
      <li><a href="Lighting.php">Lighting</a></li>
      <li><a href="hair.php">Reception halls</a></li>
      <li><a href="decoration.php">Decoration</a></li>
      <li><a href="cake.php">Cake & Sweet</a></li>
      <li class="logSign"><a href="action/logout.php">LogOut</a></li>
      <li class="logSign"><a href="questions.php">Questions<span style="font-size:18px;position:relative;color:#fff;right:1px;bottom:8px;"><?php echo $number; ?></span></a></li>
      <li class="logSign"><a href="answeredQuestion.php">Answered Questions</a></li>
      <li class="logSign"><a href="finishOrder.php">Finished Orders</a></li>
      <li class="logSign"><a href="viewOrder.php">Orders</a></li>
      <li class="logSign"><a href="customers.php">Customers</a></li>

    </ul>


  </body>
</html>
