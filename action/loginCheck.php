<?php
$db=mysqli_connect("localhost","root",'');
mysqli_select_db($db,'event');

$email = $_POST["email"];
$password= $_POST["password"];

if($_POST["submit"]){
  $sql = "SELECT * FROM users WHERE email='".$email."' and password='".$password."' limit 1";

  $result = mysqli_query($db,$sql);
  $row=mysqli_fetch_assoc($result);
    if (mysqli_num_rows($result)==1) {
          session_start();
          if($row['type']=="Admin"){
            $_SESSION['name']=$row['name'];
            $_SESSION['email']=$row['email'];
            $_SESSION['type']=$row['type'];
            header("location: http://localhost/Online-Event-management-system/admin/cake.php");
          }else{
            $_SESSION['auth']="a";
            $_SESSION['name']=$row['name'];
            $_SESSION['email']=$row['email'];
            //echo $_Session['name'];
            header("location: ../home.php");
          }


      } else {
        echo "fail";
      }
  }


?>
