<?php

class notice {
   
public $db;
public $conn;
public $user_ob;
public $user;
public $result;

//starting connection

 public function __construct($db=null){

    if ($db) {
      $this->db=$db;
    }else{
      $this->db=new database();
    }
     $this->conn=$this->db->conn;

 }

public function __destruct(){
  $this->db->closeConnection();
}

 public function select($query){  
   return $this->result=$this->db->select($query);
  }

//end dabtabase connection

public function get_notice_info(){




       $sql="select * from notice ORDER BY id DESC";
       $info=array();
       $res=$this->select($sql);
       while ($row=mysqli_fetch_array($res)) {
       	 $id=$row['id'];
       	 $sub_res['id']=$id;
       	 $sub_res['title']=$row['title'];
       	 $sub_res['description']=$row['description'];
       	 $sub_res['date']=$row['date'];
       	 $sub_res['add_by']=$row['add_by'];
       	 $info[$id]=$sub_res;
       }

    return $info;
}

public function test(){
  echo "hey";
}


}


?>

