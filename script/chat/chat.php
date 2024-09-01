<?php


class chat {
   
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
     $this->user_ob=new user($this->db);
	 $this->user=$this->user_ob->get_user_info();

 }


public function __destruct(){
  $this->db->closeConnection();
}

 public function select($query){
   return $this->result=$this->db->select($query);
  }

//end dabtabase connection
public function get_chat_list(){
	$sql="select * from chat";
	$info=$this->db->get_sql_array($sql);
	return $info;
}

public function get_chat_last_list($per){
	$sql="select * from chat ORDER BY id DESC";
	$info=$this->db->get_sql_array($sql);
    $user_info=$this->user;
    
    $c=0;

    foreach ($info as $key => $value) {
    	$user_id=$value['user_id'];
    	$permit=$user_info[$user_id]['permit'];
        if($per=="techserm" && $permit>5)$c++;
        else if($per=="ins" && $permit<=5)$c++;
        else break;
    }

 return $c;
}

}


?>

