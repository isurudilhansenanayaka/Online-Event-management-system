<!DOCTYPE html>
<?php include 'header.php'; ?>
<?php
 require_once('auth.php');
 ?>
<?php
$db=mysqli_connect("localhost","root","") or die ("Error Occures");
mysqli_select_db($db,"event") or die("Error Occures");
$sql = "SELECT * FROM question WHERE Status=0";
$records = mysqli_query($db,$sql);
?>
<html lang="en" dir="ltr">
<link rel="stylesheet" href="../css/register.css">
<link rel="stylesheet" href="css/table.css">
<link rel="stylesheet" href="css/modal.css">
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">

    </style>
  </head>

  <body>
    <center>
        <h1>Question Forum</h1>

    <br>

    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Event Code" style="float:right;margin-right:140px;margin-bottom:5px;">
    <br>
    <center>
    <table id="myTable">
      <tr>
        <th>Question Number</th>
        <th>Event</th>
        
        <th>customerName</th>
        <th>Question</th>
        <th>Action</th>
      </tr>

      <?php
        $count = 0;

        while($row = mysqli_fetch_assoc($records)) {

          echo "<tr>";
					echo "<td>".$row["QuestionNo"]."</td>";
					echo "<td>".$row["StoreType"]."</td>";
					
          echo "<td>".$row["CustomerName"]."</td>";
					echo "<td>".$row["Question"]."</td>";
          echo "<td>
              <form method='post' action='answer.php'>
              <input type='hidden' name='id' value=".$row["QuestionNo"].">
              <input type='submit' class='button1' value='Give Answer'>
              </form>
          </td>";
					echo "</tr>";
          $count++;
        }
      ?>
    </table>

  <center>
    <script src="script/filter.js"></script>
    <script src="script/modal.js"></script>
    <script src="script/delAlert.js"></script>

  </body>
</html>
