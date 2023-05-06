<?php

    class EOrganizer extends Controller{
        public function __construct(){
            if(!isLoggedIn()){
                redirect('users/login');
            }
            $this->EOrganizerModel = $this->model('EOrganizerModel');
            $this->userModel = $this->model('User');
        }

        

      /** Event Organizers Pages  */
public function CreateEvent()
{
    if (!isLoggedIn()) {
        redirect('users/login');
    }
    $data=['title' =>'',
    'ammount' => '',
    'description' =>'',
    'city' => '',
    'duedate' => '',
    'proof' => '',
   'passbook' => '',
   'thumb' => '',
    'accountno' =>'', 
    'bankname' =>'', 
    'titleErr' => '',
    'amountErr' => '',
    'descriptionErr' => '',
    'cityErr' => '',
    'duedateErr' => '',
    'proofErr' => '',
   'passbookErr' => '',
    'thumbErr' => '',  
    'user_idErr' => '',
    'accnumberErr' => '',
    'banknameErr' => '',
  //  'categories' => $categories,
    'user_id' => ''];
    $this->view('users/eorganizer/create_events',$data);
}

public function DonationHistory()
{
    if (!isLoggedIn()) {
        redirect('users/login');
    }
    $this->view('users/eorganizer/donation_history');
}

public function DonationReq()
{
    if (!isLoggedIn()) {
        redirect('users/login');
    }
    $this->view('users/eorganizer/donation_requests');
}

public function EventDetails()
{
    if (!isLoggedIn()) {
        redirect('users/login');
    }
    $this->view('users/eorganizer/event_details');
}

public function Reports()
{
    if (!isLoggedIn()) {
        redirect('users/login');
    }
    $this->view('users/eorganizer/reports');
}

public function stats()
{
    if (!isLoggedIn()) {
        redirect('users/login');
    }
    $this->view('users/eorganizer/stats');
}

public function Sponserships()
{
    if (!isLoggedIn()) {
        redirect('users/login');
    }
    $this->view('users/eorganizer/sponserships');
}



//add a new Event
public function Addevent(){


     if($_SERVER['REQUEST_METHOD'] == 'POST'){
         // Sanitize POST data
         $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

         $id = $_SESSION['event_org_id'];

         $data = [
             // 'id' => $id,
             'title' => trim($_POST['title']),
             'ammount' => trim($_POST['ammount']),
             'description' => trim($_POST['description']),
             'city' => trim($_POST['city']),
             'duedate' => trim($_POST['duedate']),
             'proof' => trim($_POST['proof']),
            'passbook' => trim($_POST['passbook']),
            'thumb' => trim($_POST['thumb']),
             'accountno' => trim($_POST['accountno']),
             'bankname' => trim($_POST['bankname']),
             'titleErr' => '',
             'amountErr' => '',
             'descriptionErr' => '',
             'cityErr' => '',
             'duedateErr' => '',
             'proofErr' => '',
            'passbookErr' => '',
             'thumbErr' => '',  
             'user_idErr' => '',
             'accnumberErr' => '',
             'banknameErr' => '',
           //  'categories' => $categories,
             'user_id' => $id
           ];

           

         if(empty($data['title'])){
             $data['titleErr'] = 'Please enter title';
         }

         if(empty($data['name'])){
           $data['nameErr'] = 'Please enter name';
       }

       if(empty($data['NIC'])){
         $data['NICErr'] = 'Please enter NIC';
     }


         if(empty($data['amount'])){
             $data['amountErr'] = 'Please enter amount';
         }

         if(empty($data['description'])){
           $data['descriptionErr'] = 'Please enter description';
       }

       if(empty($data['contact'])){
         $data['contactErr'] = 'Please enter contact';
     }

     if(empty($data['city'])){
       $data['cityErr'] = 'Please enter city';
   }

         if(empty($data['duedate'])){
             $data['duedateErr'] = 'Please enter duedate';
         }

         // if(empty($data['proof'])){
         //   $data['proofErr'] = 'Please enter image';
         //  }

         //  if(empty($data['passbook'])){
         //   $data['passbookErr'] = 'Please enter image';
         //  }

          if(empty($data['accnumber'])){
           $data['accnumberErr'] = 'Please enter account number';
          }

          if(empty($data['bankname'])){
           $data['banknameErr'] = 'Please enter bank';
          }
  

        

         // Make sure no errors
         if(empty($data['descriptionErr']) && empty($data['titleErr']) && empty($data['amountErr']) && empty($data['duedateErr']) && empty($data['nameErr'])  && empty($data['NICErr']) && empty($data['cityErr']) && empty($data['contactErr']) && empty($data['accnumberErr']) && empty($data['banknameErr'])){
             // Validated
             if($this->EOrganizerModel->addevent($data)){
                 redirect('EOrganizer/CreateEvent');
             } else {
                 die('Something went wrong');
             }
         } else {
             // Load view with errors
             $this->view('users/eorganizer/create_events', $data);
         }

     }else{
         $data = [
            /* 'id' => '',*/
             'title' => '',
           
             //'cat_id' => '',
            
             'amount' => '',
             'description' => '',
             'contact' => '',
             'city' => '',
             'duedate' => '',
             'proof' => '',
             'passbook' => '',
             'accnumber' => '',
             'bankname' => '',
            // 'img2' => '',
         //  'img3' => '',
             'titleErr' => '',
             'nameErr' => '',
             'NICErr' => '',
             //'categoryErr' => '',
             'descriptionErr' => '',
             'amountErr' => '',
            // 'typeErr' => '',
             'contactErr' => '',
             'cityErr' => '',
            // 'publisheddateErr' => '',
             'duedateErr' => '',
            // 'user_idErr' => '',
             'passbookErr' => '',
             'proofErr' => '',
             'accnumberErr' => '',
             'banknameErr' => '',
            // 'img2Err' => '',
            // 'img3Err' => '',
             // 'categories' => $categories
           ];
     
           $this -> view('users/eorganizer/create_events', $data);
     }
    

   }









    }

    