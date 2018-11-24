<?php include 'header.php'; ?>
<?php
 require_once('auth.php');
 ?>
<?php

  $id=$_POST['id'];
  global $name;
  global $email;
  global $store;
  global $question;
  global $item;
  $db=mysqli_connect("localhost","root","") or die ("Error Occures");
  mysqli_select_db($db,"event") or die("Error Occures");
  $sql = "SELECT * FROM question WHERE QuestionNo='$id'";
  $records = mysqli_query($db,$sql);
  $row = mysqli_fetch_assoc($records);
  $name=$row["CustomerName"];
  $email=$row["CustomerEmail"];
  $store=$row["StoreType"];
  $question=$row["Question"];
  $item=$row["EventName"];
  //header("Location: http://localhost/Online-Event-management-system/admin/skin.php");

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
      <a type="button" id="myBtn" class="button3" href="question.php" style="margin-left:25px;background-color: #ee4e0d;">Back</a>

            <form action="action/mail.php" method="post" enctype="multipart/form-data">
              <div class="container">
                <div class="container signin">
                  <center>
                    <h1>Answer Question</h1>
                    <p>Answer Correctly The Customer will recieve your Answer as a Email</p>
                  </center>
                </div>
                <hr>
                <center>
                    <input type="hidden"  name="QuestionNo" value="<?php echo $id; ?>" readonly>
                    <label for="CustomerName"><b>Customer Name</b></label>
                    <br>
                    <input type="text" name="name" value="<?php echo $name; ?>" readonly>
                    <br>
                    <label for="CustomerEmail"><b>Customer Email</b></label>
                    <br>
                    <input type="text" name="email" value="<?php echo $email; ?>" readonly>
                    <br>
                    <label for="store"><b>Store</b></label>
                    <br>
                    <input type="text" name="store" value="<?php echo $store; ?>" readonly>
                    <br>
                    <label for="EventName"><b>Event Name</b></label>
                    <br>
                    <input type="text" name="Eventname" value="<?php echo $Eventname; ?>" readonly>
                    <br>
                    <label for="Question"><b>Question</b></label>
                    <br>
                    <input type="Text"  name="question" value="<?php echo $question; ?>" readonly>
                    <br>
                    <label for="Answer"><b>Answer</b></label>
                    <br>
                    <textarea type="Text" placeholder="Enter The Answer" name="answer"  required></textarea>
                    <br>
                    <input type="submit" class="registerbtn" name="submit" value="Answer">
                </center>
              </div>

              <div class="container signin">

              </div>
            </form>
  </body>
</html>
