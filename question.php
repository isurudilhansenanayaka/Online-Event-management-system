<!DOCTYPE html>
<?php
 require_once('auth.php');
 ?>
<?php
$db=mysqli_connect("localhost","root","") or die ("Error Occures");
mysqli_select_db($db,"event") or die("Error Occures");
$type=$_POST['store'];
$Eventname=$_POST['Eventname'];
$Eventcode=$_POST['Eventcode'];

?>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/register.css">
    <title>Question</title>
  </head>
  <body>
    <form action="action/insertQuestion.php" method="post">
      <div class="container">
        <div class="container signin">
          <center>
            <h1>Question</h1>
            <p>Ask The question related to the item</p>
          </center>
        </div>
        <hr>
        <center>
            <label for="email"><b>Store Type</b></label>
            <br>
            <input type="text" placeholder="Enter Store" value ="<?php echo $type;?>" name="store" readonly>
            <br>
            <label for="email"><b>Item Name</b></label>
            <br>
            <input type="text" placeholder="Enter ItemName" name="Eventname" value="<?php echo $Eventname; ?>" readonly>
            <br>
            <input type="hidden" name="Eventcode" value="<?php echo $Eventcode; ?>">
            <input type="hidden" name="Eventname" value="<?php echo $_SESSION['Eventname']; ?>">
            <input type="hidden" name="cemail" value="<?php echo $_SESSION['email']; ?>">
            <label for="psw"><b>Question</b></label>
            <br>
            <textarea type="text" placeholder="Enter your Question" name="question" required></textarea>
            <hr>
            <input type="submit" class="registerbtn" name="submit" value="Ask Question"></input>
        </center>
      </div>
    </form>
  </body>
</html>
