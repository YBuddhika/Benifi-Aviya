<?php

    class EOrganizerModel {
        private $db;

        public function __construct()
        {
            $this->db = new Database;
        }

        /**
         * @return mixed
         */
        public function getUserData($id){

            

            $this->db->query('SELECT * FROM reg_user WHERE id = :id');
            $this->db->bind(':id', $id);
            $results = $this->db->resultSet();
            return $results;
        }

        public function updateprofileeorganizer($data){

            $zero ='1';

            $this->db->query('SELECT * FROM reg_user WHERE id = :id');
                $this->db->bind(':id', $data['id']);
                $row2 = $this->db->single();
                $tp_existing = $row2->tp_number;
                $tp_new = $data['contact'];

                $this->db->query('SELECT * FROM event_org WHERE user_id = :id');
                $this->db->bind(':id', $data['id']);
                $row = $this->db->single();

                if(empty($data['full_name'])){
                    $data['full_name'] = $row->full_name; 
                    
                }
                if(empty($data['comm_name'])){
                    $data['comm_name'] = $row->community_name; 
                    
                }
                if(empty($data['desg'])){
                    $data['desg'] = $row->designation; 
                    
                }
                if(empty($data['city'])){
                    $data['city'] = $row->city; 
                }
                if($data['district'] == $zero){
                    $data['district'] = $row->district; 
                }

                
                $this->db->query('UPDATE event_org SET full_name = :full_name, community_name = :comm_name, designation = :desg, city = :city, district = :district WHERE user_id = :id');
                $this->db->bind(':id', $data['id']);
                $this->db->bind(':full_name', $data['full_name']);
                $this->db->bind(':comm_name', $data['comm_name']);
                $this->db->bind(':desg', $data['desg']);
                $this->db->bind(':city', $data['city']);
                $this->db->bind(':district', $data['district']);

            
                if($this->db->execute()){

                $this->db->query('SELECT * FROM reg_user WHERE tp_number = :tp_number');
                // Bind value
                $this->db->bind(':tp_number', $data['contact']);
                $row3 = $this->db->single();
                 // Check row
                if ($this->db->rowCount() > 0) {
                    $tp_new = $tp_existing; 
                }else{
                    if(empty($data['contact'])){
                        $tp_new = $tp_existing; 
                        
                    }
                }

                
                $this->db->query('UPDATE reg_user SET tp_number = :tp_number WHERE id = :id');
                $this->db->bind(':id', $data['id']);
                $this->db->bind(':tp_number', $tp_new);

                if($this->db->execute()){
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        /**
   * @param $data
   * @return bool
   */
    public function addevent($data){
        // $type1 = "ind";
        $this->db->query('INSERT INTO events (event_title, description, location, budget, due_date , proof_letter, thumbnail, bank_pass_book, bank_acc_number, bank_name, event_org_id) VALUES
        (:request_title, :description, :city, :ammount, :due_date, :proof_document, :thumb, :passbook, :accountno, :bankname, :event_org_id)');
  
        // Bind values
        $this->db->bind(':event_title', $data['title']);
        $this->db->bind(':description', $data['description']);   
        $this->db->bind(':city', $data['city']);
        $this->db->bind(':ammount', $data['ammount']);
        $this->db->bind(':due_date', $data['duedate']);
        $this->db->bind(':proof_document', $data['proof']);
        $this->db->bind(':thumb', $data['thumb']);
        $this->db->bind(':passbook', $data['passbook']);
        $this->db->bind(':accountno', $data['accountno']);
        $this->db->bind(':bankname', $data['bankname']);
        $this->db->bind(':event_org_id', $data['event_org_id']);
 
 
                 if ($this->db->execute()) {
                     return true;
                 } else {
                     return false;
                 }
         //     } else {
         //         return false;
             
         // }
     }


        
    }