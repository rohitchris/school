<?php


class setting {
   
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

public function genaral_setting_info(){
	$sql="select * from setting";
    $info=$this->db->get_sql_array($sql);
    $data=array();
    foreach ($info as $key => $value) {
    	$option_name=$value['option_name'];
    	$option_value=$value['option_value'];
        $res=array();
    	$res['id']=$value['id'];
    	$res['option_value']=$option_value;
    	$res['option_name']=$option_name;
    	array_push($data, $res);
    }
return $data;
} 


}


?>

