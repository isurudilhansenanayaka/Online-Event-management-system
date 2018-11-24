<!DOCTYPE html>
<?php include 'header.php'; ?>
<?php
 require_once('auth.php');
 ?>
<?php
$db=mysqli_connect("localhost","root","") or die ("Error Occures");
mysqli_select_db($db,"event") or die("Error Occures");
$sql = "SELECT * FROM answer ORDER BY QuestionNo DESC";
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
        <h1>Answered Question Forum</h1>

    <br>

    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Event Code" style="float:right;margin-right:140px;margin-bottom:5px;">
    <br>
    <center>
    <table id="myTable">
      <tr>
        <th>Question Number</th>
        
        <th>EventName</th>
        <th>customerName</th>
        <th>Question</th>
        <th>Answer</th>
      </tr>

      <?php
        $count = 0;

        while($row = mysqli_fetch_assoc($records)) {

          echo "<tr>";
					echo "<td>".$row["QuestionNo"]."</td>";
					echo "<td>".$row["StoreType"]."</td>";
					
          echo "<td>".$row["CustomerName"]."</td>";
					echo "<td>".$row["Question"]."</td>";
          echo "<td>".$row["Answer"]."</td>";
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
