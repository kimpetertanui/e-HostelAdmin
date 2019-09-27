<?php
session_start();
include 'DatabaseConfig.php';

// Create connection
$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);

if ($conn->connect_error) {
 
 die("Connection failed: " . $conn->connect_error);
} 

       if (isset($_POST['delete'])) {
           $id=$_POST['id'];
 $_SESSION['id']=$id;
 echo $id;
       }


$sql = "SELECT * FROM rooms WHERE hostel_id=$id";

$result = $conn->query($sql);

if ($result->num_rows >0) {
 
 
 while($row[] = $result->fetch_assoc()) {
 
 $tem = $row;
 
 $json = json_encode($tem);
 
 
 }
 
} else {
 echo "No Rooms Found.Please add rooms to this Hostel";
}
 echo $json;
$conn->close();

?>