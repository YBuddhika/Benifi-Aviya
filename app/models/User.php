<?php
  class User {
    private $db;

    public function __construct(){
      $this->db = new Database;
    }

    // Regsiter user
    public function register($data){
      $this->db->query('INSERT INTO beneficiary (email, password) VALUES( :email, :password)');
      // Bind values
      $this->db->bind(':email', $data['email']);
      $this->db->bind(':password', $data['password']);

      // Execute
      if($this->db->execute()){
        return true;
      } else {
        return false;
      }
    }

   

    // Login user
    public function login($email, $password){
      $this->db->query('SELECT * FROM beneficiary WHERE email = :email');
      $this->db->bind(':email', $email);

      $row = $this->db->single();

      $hashed_password = $row->password;
      if(password_verify($password, $hashed_password)){
        return $row;
      } else {
        return false;
      }
    }

    // Find user by email
    public function findUserByEmail($email){
      $this->db->query('SELECT * FROM beneficiary WHERE email = :email');
      // Bind value
      $this->db->bind(':email', $email);

      $row = $this->db->single();

      // Check row
      if($this->db->rowCount() > 0){
        return true;
      } else {
        return false;
      }
    }


    public function addevent($data){
      $this->db->query('INSERT INTO events(eventname,description,totalcost,budget,contactnumber,duedate)  VALUES(:eventname, :description, :totalcost, :budget, :contactnumber, :duedate)');
      // Bind values
      $this->db->bind(':eventname', $data['eventname']);
      $this->db->bind(':description', $data['description']);
      $this->db->bind(':totalcost', $data['totalcost']);
      $this->db->bind(':budget', $data['budget']);
      $this->db->bind(':contactnumber', $data['contactnumber']);
      $this->db->bind(':duedate', $data['duedate']);
      
      // Execute
      if($this->db->execute()){
          return true;
      } else {
          return false;
      }
  }
  }