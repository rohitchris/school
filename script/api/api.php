<?php


class api {
   
public $db;
public $conn;
public $user_ob;
public $user;
public $result;

public function __destruct(){
  $this->db->closeConnection();
}
   

//starting connection

 public function __construct($db=null){
     
     
    if ($db) {
      $this->db=$db;
    }else{
      $this->db=new database();
    }
     $this->conn=$this->db->conn;

 }

 public function select($query){
   return $this->result=$this->db->select($query);
  }

//end dabtabase connection


}


?>

