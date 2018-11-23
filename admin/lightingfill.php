<?php include 'header.php'; ?>
<?php
 require_once('auth.php');
 ?>
<?php

  $id=$_POST['id'];
  global $ic;
  global $in;
  global $dis;
  global $pri;
  $db=mysqli_connect("localhost","root","") or die ("Error Occures");
  mysqli_select_db($db,"event") or die("Error Occures");
  $sql = "SELECT * FROM lighting WHERE EventCode='$id'";
  $records = mysqli_query($db,$sql);
  $row = mysqli_fetch_assoc($records);
  $ic=$row["EventCode"];
  $in=$row["EventName"];
  $dis=$row["Discription"];
  $pri=$row["Price"];
  //header("Location: http:/localhost/Online-Event-management-system/admin/saloon.php");

?>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="css/table.css">
    <link rel="stylesheet" href="../css/register.css">
  </head>
  <body>
    <br>
      <a type="button" id="myBtn" class="button3" href="saloon.php" style="margin-left:25px;background-color: #ee4e0d;">Back</a>

            <form action="action/updatelighting.php" method="post" enctype="multipart/form-data">
              <div class="container">
                <div class="container signin">
                  <center>
                    <h1>Update Lighting Event</h1>
                    <p>Please Make changes correctly to form to Update
                       Lighting Event</p>
                  </center>
                </div>
                <hr>
                <center>
                    <label for="EventCode"><b>Event Code</b></label>
                    <br>
                    <input type="text" placeholder="Enter Code" name="EventCode" value="<?php echo $ic ?>" readonly>
                    <br>
                    <label for="EventName"><b>Event Name</b></label>
                    <br>
                    <input type="text" placeholder="Enter Name" name="Event Name" value="<?php echo $in ?>" required>
                    <br>
                    <label for="Discription"><b>Discription</b></label>
                    <br>
                    <input type="text" placeholder="Enter Discription" name="Discription" value="<?php echo $dis ?>"required>
                    <br>
                    <label for="Price"><b>Price LKR</b></label>
                    <br>
                    <input type="Text" placeholder="Repeat Password" name="Price" value="<?php echo $pri ?>" required>
                    <br>
                    <label for="image"><b>Image</b></label>
                    <br>
                    <input type="hidden" name="size" value="1000000">
                    <input type="file" name="image">
                    <hr>
                    <input type="submit" class="registerbtn" name="submit" value="Update"></input>
                </center>
              </div>

              <div class="container signin">

              </div>
            </form>
  </body>
</html>
