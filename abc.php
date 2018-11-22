<?php
include "test.php";
$sql = "SELECT * FROM users order by name";
$result=mysqli_query($db,$sql);
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>type</th>
  </tr>
  <?php while ($row=mysqli_fetch_assoc($result)) { ?>

  <tr>
    <td><?php echo $row['Id']; ?></td>
    <td><?php echo $row['name']; ?></td>
    <td><?php echo $row['email']; ?></td>
    <td><?php echo $row['type']; ?></td>
  </tr>
<?php } ?>


    </table>
  </body>
</html>
