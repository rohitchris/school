
<?php

class dbclass {
   

 public $host=db_host;
 public $user=db_user;
 public $pass=db_pass;
 public $db=db_name;
 public $sql;
 public $result;
 public $conn;
 public $row;
 public $shaw;

 //conection start

//  public function __construct(){
//      $this->connection();

//  }


// public function connection(){

//      $this->conn =mysqli_connect("p:".$this->host,$this->user,$this->pass,$this->db);
// if(!$this->conn){
// die("DB Connection Failed: " . mysqli_connect_error());
// }

// }

// public function select($query){
// return $this->result=mysqli_query($this->conn, $query);
// }



}


?>