<!DOCTYPE html>
<?php
error_reporting(0);
 ?>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/navigation.css"/>
    <title>The Event Management System</title>
  </head>

  <body>
    <ul>

      <li><a class="active" href="home.php">Home</a></li>
      <li><a href="catering.php">Catering</a></li>
      <li><a href="saloon.php">Saloon</a></li>
      <li><a href="DJ.php">DJ</a></li>
      <li><a href="body.php">Lighting</a></li>
      <li><a href="hair.php">Reception halls</a></li>
      <li><a href="decoration.php">Decoration</a></li>
      <li><a href="cake.php">Cake & Sweet</a></li>
      <li><a href="aboutus.php">About</a></li>
      <li><a href="Men">Contact Us</a></li>
      <?php
        session_start();
        if($_SESSION['auth']=='a'){
          error_reporting(0);
          //echo "<li class='logSign'>".$_SESSION['name']."</li>";
          echo "<li class='logSign'><a href='action/logout.php'>LogOut</a></li>";
          echo "<li class='logSign'><a href='user_page.php'>".$_SESSION['name']."</a></li>";

       }else{
         echo "<li class='logSign'><a href='register.php'>SignUp</a></li>";

         echo "<li class='logSign'><a href='login.php'>Login</a></li>";
       }
       ?>

    </ul>


  </body>
</html>
