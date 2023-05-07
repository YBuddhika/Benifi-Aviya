<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8" />
    <title>Reservations</title>
    <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/add_donation_req.css" /> 
    <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/donation_req.css" />
    <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/style_dashboard.css" />
    <!-- <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/donation_history.css" /> -->
    <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/style_user.css" />

    <!-- <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/donation_list.css" /> -->

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>

<?php require APPROOT.'/views/inc/side_navbar_beneficiary.php';?>


<section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class="bx bx-menu sidebarBtn"></i>
                <span class="dashboard">Donation Request</span>
            </div>

            <div class="profile-details">
                <div class="notification">
                    <i class="bx bx-bell bx-tada notification"></i>
                </div>
                <a href="<?php echo URLROOT; ?>/pages/profileBeneficiary"><img src="<?php echo URLROOT; ?>/img/img_profile.png" alt="" /></a>
                <!-- <span class="admin_name"><a style="text-decoration: none; color: black" href="change_password.php">Profile</a></span> -->
                <!-- <i class='bx bx-chevron-down'></i> -->
            </div>
        </nav>

        <div class="main-container">


<table class="main-table">
<thead>
            <!-- <th style="text-align:left;"><span>ID</span></th> -->
            <th style="text-align:left;"><span>Donor Name</span></th>
            <th style="text-align:left;"><span>Meal Count</span></th>
            <th style="text-align:left;"><span>Reservation Date</span></th>
            <th style="text-align:left;"><span>Reserved Date</span></th>
            <!-- <th style="text-align:left;"><span>Meal Time</span></th>  -->
            <th style="text-align:left;"></th>
            <th style="text-align:left;"></th>
</thead>

<tbody>
                            
    <tr>
                              
    <?php foreach($data['reservations'] as $reservations): ?>

        <td style="text-align:left;"><?php echo $reservations->name; ?></td> 
        <td style="text-align:left;"><?php echo $reservations->meal; ?></td>
        <td style="text-align:left;"><?php echo $reservations->time_stamp; ?></td>
        <td style="text-align:left;"><?php echo $reservations->date; ?></td>
        <!-- <td style="text-align:left;"><?php echo $reservations->meal; ?></td> -->
        <td style="text-align:left;"><a href="<?php echo URLROOT; ?>/beneficiary/approveReservation/" class="btn-edit">Accept</a></td>
        <td style="text-align:left;"><a href="<?php echo URLROOT; ?>/beneficiary/rejectReservation/" class="btn-edit">Reject</a></td>

    </tr>
    
    <?php endforeach; ?>

                          
   </tbody>
</table>
</div>
</section>

        <script>
       

       // js for drop down list 
      const optionMenu = document.querySelector(".select-menu"),
           selectBtn = optionMenu.querySelector(".select-btn"),
           options = optionMenu.querySelectorAll(".option"),
           sBtn_text = optionMenu.querySelector(".sBtn-text");

       selectBtn.addEventListener("click", () => optionMenu.classList.toggle("active"));

       options.forEach(option => {
           option.addEventListener("click", () => {
               let selectedOption = option.querySelector(".option-text").innerText;
               sBtn_text.innerText = selectedOption;

               optionMenu.classList.remove("active");
           });
       });

   </script>
</body>

</html>
