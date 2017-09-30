<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Assesment Data Tracker</title>
    <link rel="stylesheet" href="style/bootstrap.min.css">
  </head>
  <body>
    <heade>
      <h1>Assesment Data Tracker</h1>
    </header>
    <main>
      <form class="form" action="login.php" method="post">
          <div class="form-group">
            <label class="form-label">Enter your user id</label>
            <input type="text" name="uid" placeholder="Instructor101" pattern="[A-Za-z0-9]{3,}" title="Accepted format is any alphanumeric character"/>
          </div>
          <div class="form-group">
            <label class="form-label">Password</label>
            <input type="password" name="password" placeholder="your password here" pattern="[a-zA-Z0-9!@#$%^&*]{8,}" title="must be atleast of length 8"/>
          </div>
          <div class="form-group">
            <input type="submit" name="submit"/>
          </div>
      </form>
    </main>
    <footer>

    </footer>
  </body>
</html>
