<!DOCTYPE html>
<?php include 'header.php'; ?>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="css/register.css">
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

    
      <div class="container">
        <div>
          <center>
            <h1>Advertisment</h1>

		  </center>
		</div>
        <hr>
        <center>
		
		<div id="container" align='left'>
		<form action="action/set_add.php" method="post" enctype='multipart/form-data'>
			<label for="add_title"><b>Advetisment title</b></label><br>
            <input type="text" placeholder="Title" name="add_title" required><br>
			
            <label for="Keytag"><b>Keytags (seperated by commas)</b></label><br>
			<input type="text" placeholder="Keytag1,keytag2,.." name="keytag" required><br>
			
			<label for="area"><b>Service Area (seperated by commas)</b></label><br>
			<input type="text" placeholder="Colombo,Gamapaha," name="area" required><br>
			
            <label for="discription"><b>Service description</b></label><br>
			<input type="text" placeholder="Enter your service description" name="discription"><br>
            
            <hr>
           
			<input type='file' name='file' id='file' multiple>
			<input type='submit' value='submit' name="submit">
		</form>
			
		</div>
		
        </center>
		
      </div>

   

  </body>
</html>
