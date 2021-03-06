<?php
session_start(); 
// echo "All rooms are Here";

  ?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>e-Hostel : : View Rooms</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="index.php">e-Hostel Management System</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <span class="badge badge-danger">9+</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <span class="badge badge-danger">7</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="#">Settings</a>
          <a class="dropdown-item" href="#">Activity Log</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </div>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="home.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-home"></i>
          <span>Hostels</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <!-- <h6 class="dropdown-header">Login Screens:</h6> -->
          <a class="dropdown-item" href="add_hostel.html">Add Hostel</a>
          <a class="dropdown-item" href="home.php">View Hostels </a>
          
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="tenants.php">
          <i class="fa fa-user" aria-hidden="true"></i>
          <span>Tenants</span></a>
      </li>
     <li class="nav-item">
        <a class="nav-link" href="notice.php">
          <i class="fas fa-fw fa-table"></i>
          <span>Notice</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="view_notice.php">
          <i class="fas fa-eye"></i>
          <span>View Notices</span></a>
      </li>
    </ul>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs--> <ol class="breadcrumb">   <li class="breadcrumb-
        item">     <a href="home.php">Dashboard</a>   </li>   <li class="breadcrumb-
        item active">/Add Room</li> </ol>

       
      
<!--start of form-->
<hr>
<div class="container pt-1">
<form action="insert_room.php" method="POST">
<div class="row">
  <div class="col-md-6">
  <div class="form-group">
    <label for="room_no">Room ID</label>
    <input type="text" name="room_no" class="form-control" id="room_no" aria-describedby="room_no" placeholder="Enter Room ID " required>
  </div>
  <div class="form-group">
    <label for="room_name">Room Name</label>
    <input type="text" name="room_name" class="form-control" id="room_name" aria-describedby="room_name" placeholder="Enter Room Name" required>
  </div>
  </div>
  <div class="col-md-6">
    <div class="form-group">
    <label for="room_details">Room Details</label>
    <input type="text" name="room_details" class="form-control" id="room_details"" aria-describedby="room_details"" placeholder="Enter Room Details" required>
  </div>
  <div class="form-group">
    <label for="price">Price</label>
    <input type="text" name="price" class="form-control" id="price" aria-describedby="price" placeholder="Enter the Price" required>
  </div>
  </div>
   <div class="col-md-6">
  <div class="form-group">
    <label for="status">Room Status</label>
    <input type="text" name="status" class="form-control" id="status" aria-describedby="status" placeholder="Enter the Status e.g vaccant or occupied" required>
  </div>
    
  </div>
    <div class="col-md-6">

      <div class="form-group">
    <label for="hostel_id">Hostel Serial Number</label>
    <input type="text" name="hostel_id" value="<?php if (isset($_POST['add_room'])) {
           $id=$_POST['id'];
 $_SESSION['id']=$id;
 echo $id;
       } ?>" class="form-control" id="hostel_id" aria-describedby="hostel_id" placeholder="Hostel Serial Number" readonly >

  </div>

  </div>

</div>
  <hr>
  <div class="row">
    <div class="col text-center">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</div>
  <!--end of form-->
      <!-- Sticky Footer -->
      <!-- <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright ©  e-Hostel 2019</span>
          </div>
        </div>
      </footer> -->

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>

</body>

</html>
