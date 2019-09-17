<?php 
        //getting the database connection
	//Define your host here.
$servername = "localhost";

//Define your database username here.
$username = "root";

//Define your database password here.
$password = "";

//Define your database name here.
$database = "hostel";

$conn = new mysqli($servername, $username, $password, $database);

 
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

	
	//an array to display response
	$response = array();
	
	//if it is an api call 
	//that means a get parameter named api call is set in the URL 
	//and with this parameter we are concluding that it is an api call 
	if(isset($_GET['apicall'])){
		
		switch($_GET['apicall']){
			
						case 'signup':
				if(isTheseParametersAvailable(array('name','phone_no','email','id_no','password','gender'))){
					$name = $_POST['name'];
					$phone_no= $_POST['phone_no'];  
					$email = $_POST['email']; 
					$id_no= $_POST['id_no']; 
					$password = md5($_POST['password']);
					$gender = $_POST['gender']; 
					
					$stmt = $conn->prepare("SELECT id FROM users WHERE name = ? OR email = ?");
					$stmt->bind_param("ss", $name, $email);
					$stmt->execute();
					$stmt->store_result();
					
					if($stmt->num_rows > 0){
						$response['error'] = true;
						$response['message'] = 'User already registered';
						$stmt->close();
					}else{
						$stmt = $conn->prepare("INSERT INTO users (name, phone_no,email,id_no, password, gender) VALUES (?, ?, ?, ?,?)");
						$stmt->bind_param("sssss", $name,$phone_no, $email,$id_no, $password, $gender);
 
						if($stmt->execute()){
							$stmt = $conn->prepare("SELECT id, id, name,phone_no, email,id_no, gender FROM users WHERE name = ?"); 
							$stmt->bind_param("s",$name);
							$stmt->execute();
							$stmt->bind_result($userid, $id, $name,$phone_no, $email,$id_no, $gender);
							$stmt->fetch();
							
							$user = array(
								'id'=>$id, 
								'name'=>$name, 
								'phone_no'=>$phone_no,
								'email'=>$email,
								'id_no'=>$id_no,
								'gender'=>$gender
							);
							
							$stmt->close();
							
							$response['error'] = false; 
							$response['message'] = 'User registered successfully'; 
							$response['user'] = $user; 
						}
					}
					
				}else{
					$response['error'] = true; 
					$response['message'] = 'required parameters are not available'; 
				}
				
			break; 
			
			case 'login':
				
				if(isTheseParametersAvailable(array('email', 'password'))){
					
					$email= $_POST['email'];
					$password = md5($_POST['password']); 
					
					$stmt = $conn->prepare("SELECT id, name,phone_no, email,id_no, gender FROM users WHERE email = ? AND password = ?");
					$stmt->bind_param("ss",$email, $password);
					
					$stmt->execute();
					
					$stmt->store_result();
					
					if($stmt->num_rows > 0){
						
						$stmt->bind_result($id, $name,$phone_no, $email,$id_no, $gender);
						$stmt->fetch();
						
						$user = array(
							'id'=>$id, 
							'name'=>$name,
							'phone_no'=>$phone_no,  
							'email'=>$email,
							'id_no'=>$id_no, 
							'gender'=>$gender
						);
						
						$response['error'] = false; 
						$response['message'] = 'Login successfull'; 
						$response['user'] = $user; 
					}else{
						$response['error'] = false; 
						$response['message'] = 'Invalid username or password';
					}
				}
			break; 

					

			
			default: 
				$response['error'] = true; 
				$response['message'] = 'Invalid Operation Called';
		}
		
	}else{
		$response['error'] = true; 
		$response['message'] = 'Invalid API Call';
	}
	
	echo json_encode($response);
	
	function isTheseParametersAvailable($params){
		
		foreach($params as $param){
			if(!isset($_POST[$param])){
				return false; 
			}
		}
		return true; 
	}