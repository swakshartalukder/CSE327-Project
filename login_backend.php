<?php
include("db_connection.php");
$username = $_POST['username'];
$password = $_POST['password'];
$login_status = "Unsuccessful";

if(trim($username) == "" || trim($password) == "" ){
  echo "Please enter a valid username."."<br>";

  $url = "http://www.empmansys.com/CSE327-Project/login.php";
  header("Refresh: 2; URL= $url");
}

else {
  $sql = "SELECT admin.Username, admin.Password \n"

    . "FROM admin\n"

    . "WHERE admin.Username = '$username' AND admin.Password = '$password' ";

  $result = mysqli_query($conn, $sql);
  $row_num = mysqli_num_rows($result);
  if($row_num==1) $login_status = "successful";

}

if($login_status == "successful"){
  $url = "http://www.empmansys.com/CSE327-Project/login_landing.php";
  header("Refresh: 2; URL= $url");
}
else{
  echo $login_status;
  $url = "http://www.empmansys.com/CSE327-Project/login.php";
  header("Refresh: 2; URL= $url");
}




?>
