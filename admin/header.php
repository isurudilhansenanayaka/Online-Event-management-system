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
      <li><a href="skin.php">Skin-Care</a></li>
      <li><a href="saloon.php">Saloon</a></li>
      <li><a href="fragrance.php">Fragrance</a></li>
      <li><a href="body.php">Bath & Body</a></li>
      <li><a href="hair.php">Hair</a></li>
      <li><a href="decoration.php">Decoration</a></li>
      <li><a href="men.php">Men</a></li>
      <li class="logSign"><a href="action/logout.php">LogOut</a></li>
      <li class="logSign"><a href="questions.php">Questions<span style="font-size:18px;position:relative;color:#fff;right:1px;bottom:8px;"><?php echo $number; ?></span></a></li>
      <li class="logSign"><a href="answeredQuestion.php">Answered Questions</a></li>
      <li class="logSign"><a href="finishOrder.php">Finished Orders</a></li>
      <li class="logSign"><a href="viewOrder.php">Orders</a></li>
      <li class="logSign"><a href="customers.php">Customers</a></li>

    </ul>


  </body>
</html>
