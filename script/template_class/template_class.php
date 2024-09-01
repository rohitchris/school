<?php


class class_name {
   
   
public $db;
public $conn;
public $user_ob;
public $user;
public $result;

public function __destruct(){
  $this->db->closeConnection();
}

//starting connection

 public function __construct(){
     
     $this->db=new database();
     $this->conn=$this->db->conn;

 }

 public function select($query){
   return $this->result=$this->db->select($query);
  }

//end dabtabase connection


}


?>

