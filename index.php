<?php include "header.php"; ?>
<?php
  if(isset($_POST["submit"])){
    if($_POST["uid"] == "admin" && $_POST["password"] == "123admin"){
      header("location: homepage.php");
    }
    else{
      echo "Error occured!";
    }
  }

 ?>
<!DOCTYPE html>
<html>
<head>
<style>
  form{
    border:2px solid black;
    background:#efefef;
    padding:10%;
    margin:10px 25%;
    border-radius:2%;
  }
</style>
</head>
  <body class="container-fluid">
    <main class="row">
      <div class="col-md-12 text-center">
        <form class="form" method="post">
            <div class="form-group">
              <label class="form-label">Enter your user id</label>
              <input required class="form-control" type="text" name="uid" placeholder="Instructor101" pattern="[A-Za-z0-9]{3,}" title="Accepted format is any alphanumeric character"/>
            </div>
            <div class="form-group">
              <label class="form-label">Password</label>
              <input required class="form-control" type="password" name="password" placeholder="your password here" pattern="[a-zA-Z0-9!@#$%^&*]{8,}" title="must be atleast of length 8"/>
            </div>
            <div class="form-group">
              <input class="btn btn-warning" type="submit" name="submit"/>
            </div>
        </form>
      </div>
    </main>
    <footer>

    </footer>
  </body>
</html>
