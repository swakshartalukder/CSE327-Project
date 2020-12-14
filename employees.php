<!DOCTYPE html>
<html>
<head>
	<title>All Data of Employees</title>
	<link rel="stylesheet" href="../style.css">
</head>
<body background="50.jpg">
	<h1> All Data of Employees </h1> <hr> <br>
<table style="width:100%;">


   <form style="margin-top: 5%;" action="../CSE327_Project/searchin.php" method= "post">

<input type="text" name="search" placeholder="Search">
<input type="submit" value="Search" style="margin-top: 0.0000005%; color: green;">
<br><br>
</form>
</table>

<table border="3" cellspacing="9" style="text-align: center;">
	
<tr>
	<th>Employee ID</th>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Address</th>
	<th>Phone Number</th>
	<th>Email</th>
	<th>Birth Date</th>
	<th>Salary</th>
	<th>Gender</th>
</tr>

<?php
include("db_connection.php");
$query = "select * from employee";
$data = mysqli_query($conn, $query);
$total = mysqli_num_rows($data);

if($total!=0)
{
	while($result=mysqli_fetch_assoc($data))
	{
		echo "
		<tr>
		<td>".$result['Employee_ID']."</td>
		<td>".$result['Fname']."</td>
		<td>".$result['Lname']."</td>
		<td>".$result['Address']."</td>
		<td>".$result['Phone_No']."</td>
		<td>".$result['Email']."</td>
		<td>".$result['Birth_Date']."</td>
		<td>".$result['Salary']."</td>
		<td>".$result['Gender']."</td>
		</tr>


		";
	}
}

?>
</table>
</body>
</html>