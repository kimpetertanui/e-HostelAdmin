<?php

 if($_SERVER['REQUEST_METHOD']=='POST'){

 include 'DatabaseConfig.php';
 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 $username = $_POST['username'];
 $password = $_POST['password'];
 
 $Sql_Query = "SELECT * FROM admin WHERE username = '$username' AND password = '$password' ";
 
 $check = mysqli_fetch_array(mysqli_query($con,$Sql_Query));
 
 if(isset($check))
 {
 
echo 'Login Successfully';
 header('Location: http://127.0.0.1/HostelYangu/admin/home.php');
}
 }
 else if (!$check) {
 	# code...
 	
 echo "Invalid Email or Password Please Try Again";
 
 }
 
 
 
 else
 {
 echo "Check Again";
 }
mysqli_close($con);

?>