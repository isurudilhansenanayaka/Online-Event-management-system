<!DOCTYPE html>
<?php include 'header.php'; ?>
<?php
$db=mysqli_connect("localhost","root","") or die ("Error Occures");
mysqli_select_db($db,"event") or die("Error Occures");
$sql = "SELECT * FROM makeup";
$records = mysqli_query($db,$sql);
?>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="css/homeStyle.css">
    <link rel="stylesheet" href="/css/card.css">
    <meta charset="utf-8">
    <title>Saloon</title>


  </head>
  <body>
    <br>
    <center>
    <h1>Saloon</h1>
    <div class="container" id="imageCon">
      <img class="slide" src="images/saloon2.jpg">
    </div>
  </center>
    <br>
    <?php
        $a = array();
        while ($data =  mysqli_fetch_assoc($records))
        {
            $a[] = $data;
        }
        foreach ($a as $item)

        {
    ?>

    <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);transition: 0.3s;width: 25%;float:left;">
      <img src=<?php echo "admin/action/images/".$item['Image'];?> alt="Image" style="width:100%;height:200px">
        <div class="container" id="cardid" style="padding: 2px 16px;">
          <center>
          <h4><b><?php echo $item['EventName']; ?></b></h4>
          <center>
          <p><?php echo $item['Discription']; ?></p>
          <p><b>LKR </b><?php echo $item['Price']; ?></p>
        </center>
        <form class="" action="question.php" method="post">
            <input type="hidden" name="store" value="decoration">
            <input type='hidden' name='Eventname' value=<?php echo $item["EventName"];?>>
            <input type='hidden' name='Eventcode' value=<?php echo $item["EventCode"];?>>
           <p><button tpe ="submit" id="footbut">Any Questions</button></p>
         </form>
         <form class="" action="index.php" method="post">
          <input type='hidden' name='id' value=<?php echo $item["EventCode"];?>>
          <p><button id="footbut">Quick Buy</button></p>
        </form>

      </div>
    </div>
    <?php
      }
    ?>
  <br>
  </body>
</html>
