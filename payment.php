<?php
session_start();
error_reporting(0);
$user = $_SESSION['user_name'];

if($user == true)
{

}
else
{
  sleep(1);
  header('location:login.php');
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Information of Payment</title>
	<link rel="stylesheet" href="../style.css">
</head>

<style>
#editbtn
{
  background-color: green;
  color: white;
  width: 130px;
  font-size: 15px;
  height: 25px;
}

#deletebtn
{
  background-color: red;
  color: white;
  width: 130px;
  font-size: 15px;
  height: 25px;
}
</style>

<body background="50.jpg">
	<h1> Information of Payment </h1> <hr> <br>
<table style="width:100%;">


   <form style="margin-top: 5%;" action="../CSE327_Project/paysearch.php" method= "post">

<input type="text" name="paysearch" placeholder="Search">
<input type="submit" value="Search" style="margin-top: 0.0000005%; color: green;">
<br><br>
</form>
</table>

<table border="3" cellspacing="9" style="text-align: center;">
	
<tr>
	<th>Account Number</th>
	<th>Employee ID</th>
	<th>Absent</th>
	<th>Loan Cut</th>
	<th>Overtime Bonus</th>
	<th>Seasonal Bonus</th>
	<th>Other Bonus</th>
	<th>Total Payment</th>
	<th>Payment Date</th>
</tr>

<?php
include("db_connection.php");
$query = "select * from payment_info";
$data = mysqli_query($conn, $query);
$total = mysqli_num_rows($data);

if($total!=0)
{
	while($result=mysqli_fetch_assoc($data))
	{
		echo "
		<tr>
		<td>".$result['Account_No']."</td>
		<td>".$result['E_ID']."</td>
		<td>".$result['Absent']."</td>
		<td>".$result['Loan_cut']."</td>
		<td>".$result['Overtime']."</td>
		<td>".$result['Seasonal_Bonus']."</td>
		<td>".$result['Other_Bonus']."</td>
		<td>".$result['Total_Payment']."</td>
		<td>".$result['Payment_Date']."</td>
		</tr>
		";
	}
}
else
{
	echo "No Records Found";
}

?>
</table>

</body>
</html>
