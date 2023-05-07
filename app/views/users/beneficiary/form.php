<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form</title>
    <link rel="stylesheet" href= "<?php echo URLROOT; ?>/css/style_dashboard.css">
    <link
    href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
    rel="stylesheet"
  />
</head>
<body>
     navigation bar left
     <div class="sidebar">
        <div class="logo-details">
          <i class="bx bx-grid-alt"></i>
          <h1></h1>
          <span class="logo_name">Dashboard</span>
        </div>
        <div class="welcome">
          <span>Welcome</span>
        </div>
        <ul class="nav-links">
          <li>
            <a href="#">
              <i class="bx bx-grid-alt"></i>
              <span class="links_name">Dashboard</span>
            </a>
          </li>
          <li>
          <a href="<?php echo URLROOT; ?>/beneficiary/requests">
              <i class="bx bx-list-check"></i>
              <span class="links_name">Donation Requests</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bx bx-history"></i>
              <span class="links_name">Donation History</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bx bx-conversation"></i>
              <span class="links_name">Forum</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bx bx-conversation"></i>
              <span class="links_name">Events</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bx bx-pie-chart-alt"></i>
              <span class="links_name">Stats</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bx bx-conversation"></i>
              <span class="links_name">Sponcership</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bx bx-conversation"></i>
              <span class="links_name">Reports</span>
            </a>
          </li>
          </li>
          <li class="log_out">
            <a href="<?php echo URLROOT; ?>/users/logout">
              <i class="bx bx-log-out"></i>
              <span class="links_name">Log out</span>
            </a>
          </li>
        </ul>
      </div>
      <!--navigation bar left end-->
  
      <!--home section start-->
      <section class="home-section">
        <nav>
          <div class="sidebar-button">
            <i class="bx bx-menu sidebarBtn"></i>
            <span class="dashboard">Dashboard</span>
          </div>
          
          <div class="profile-details">
            <div class="notification">
              <i class="bx bx-bell bx-tada notification"></i>
            </div>
              <img src="<?php echo URLROOT; ?>/img/profile_pic.svg" alt="" />
            <!-- <span class="admin_name"><a style="text-decoration: none; color: black" href="change_password.php">Profile</a></span> -->
            <!-- <i class='bx bx-chevron-down'></i> -->
          </div>
        </nav>
    <form action="<?php echo URLROOT; ?>/users/addevent" method="POST">
    <label for="id">Event Id</label>
        <input type="text" name="id" id="id" >

        <label for="eventname">Event Name</label>
        <input type="text" name="eventname" id="eventname">
        
        <label for="description">Description</label>
        <input type="text" name="description" id="description">
        
        <label for="totalcost">Total Cost</label>
        <input type="text" name="totalcost" id="totalcost">
        
        <label for="budget">Budget</label>
        <input type="text" name="budget" id="budget">
        
        <label for="contactnumber">Contact Number</label>
        <input type="text" name="contactnumber" id="contactnumber">
        
        <label for="duedate">Due Date</label>
        <input type="date" name="duedate" id="duedate">

        <!-- <label for="bankpasscopy">Bank Passbook Copy</label>
        <input type="file" id="backpasscopy" name="bankbookcopy">
         -->
        <!-- <label for="proof">Proof Doc</label>
        <input type="file" id="proof" name="proof"> -->

        <button type="submit">Add</button>
        <button type="reset">Delete</button>

       
    </form>

      </section>
      
  
      <!--home section end-->
  
      <script>
        let sidebar = document.querySelector(".sidebar");
        let sidebarBtn = document.querySelector(".sidebarBtn");
        let welcome = document.querySelector(".welcome");
        sidebarBtn.onclick = function () {       
          sidebar.classList.toggle("active");
          if (sidebar.classList.contains("active")) {
            sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
            welcome.style.display = "none";
          } else {
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
            welcome.style.display = "block";
          }
        };
      </script>
</body>
</html>