  <?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 $room_no = $_POST['room_no'];
 $room_name= $_POST['room_name'];
 $room_details= $_POST['room_details'];
 $price = $_POST['price'];
 $status= $_POST['status'];
 $hostel_id= $_POST['hostel_id'];
 // echo '$room_details';

   $Sql_Query = "INSERT INTO rooms (room_no,room_name,room_details,price,status,hostel_id) VALUES ('$room_no','$room_name','$room_details','$price','$status','$hostel_id') " ;


 if(mysqli_query($con,$Sql_Query))
{
 echo 'User Registered Successfully';
 header('Location: http://127.0.0.1/HostelYangu/admin/home.php');
exit;
}
else
{
 echo 'Something went wrong';
 }

}
 
 mysqli_close($con);
?>