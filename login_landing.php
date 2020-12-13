<!DOCTYPE html>

<html>
  <head>
        <meta charset="utf-8">
    <meta name = "author" content="Swakshar">
    <meta name="description" content="Index Page">
    <link rel="stylesheet" type = "text/css" href="style.css">

    <title> Home Page </title>

  </head>
  <h1 id = "MainTitle01"> Employee Information Page </h1>
  <hr id="hr01">
  
  <form method="post" action="logout.php">
<tr><td><input type="submit" value="Logout" id="btn2"></td></tr>
</form>

  <body background="30.jpg">
    
  <div>
    <ul>
      <li> <a href="employees.php"> Employees </a></li>
      <li> <a href="department.php"> Departments </a></li>
      <li> <a href="payment.php"> Payment Information </a></li>
    </ul>
  </div>
</body>

  <h3 style=" margin-top: 40px; text-decoration: underline; margin-right: 500px;">  Employee Recruit Form  </h3>

 <div class= "form">
  <form style="margin-left: -200px;" action="employeeInput.php" method="post">
    <label> Employee ID </label>
    <input type="number" name="e_id" placeholder="" required>
    <br>
    <label> First Name </label>
    <input type="text" name="fname" size="25" placeholder="" required>
    <br>
    <label> Last Name </label>
    <input type="text" name="lname" size="25" placeholder="" required>
    <br>
    <label> Address </label>
    <input type="text" name="address" size="30" placeholder="" required>
    <br>
    <label> Phone Number </label>
    <input type="number" name="pnumber" placeholder="" required>
    <br>
    <label> Email </label>
    <input type="email" name="em" size="25" placeholder="" required>
    <br>
    <label> Birth Date </label>
    <input type="Date" name="date" size="25" placeholder="" required>
    <br>
    <label> Salary </label>
    <input type="number" name="salary" placeholder="" required>
    <br>
    <label> Gender </label>
    <input type="text" name="gender" size="20" placeholder="Male/Female/Others" required>
     <br>
    <input type="submit" value="Submit " id="btn">
  </form>
</div>

</html>
