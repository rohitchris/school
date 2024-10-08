<?php


class user {
   
public $db;
public $conn;
public $user_ob;
public $user;
public $result;

public function __destruct(){
  $this->db->closeConnection();
}
   

//starting connection
public $login_user_id;
 public function __construct($db=null,$id=""){

  
    $this->login_user_id=$id;
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

public function get_user_info(){
	$info=array();
	$sql="select * from user";
	$res=$this->select($sql);
	while ($row=mysqli_fetch_array($res)) {
		$id=$row['id'];
		$sub=$this->db->process_mysql_array($row);
		$sub['photo_orginal']=$row['photo'];
		$sub['phone']='0'.$sub['phone'];
		$sub['photo']="upload/user_photo/".$sub['photo'];
		$info[$id]=$sub;
	}
	return $info;
}


public function cheikh_user($uid){
	$info=$this->get_user_info();
    foreach ($info as $key => $value) {
    	$id=$value['id'];
    	if($uid==$id)return 1;
    }
    return 0;
}
 
public function get_login_user(){
	$info=$this->get_user_info();
	return $info[$this->login_user_id];
}

public function get_browser($browser){
	if(strpos($browser, 'MSIE') !== FALSE)
   		$browser='Internet explorer';
 	elseif(strpos($browser, 'Trident') !== FALSE)
    	$browser='Internet explorer';
 	elseif(strpos($browser, 'Firefox') !== FALSE)
   		$browser='Mozilla Firefox';
 	elseif(strpos($browser, 'Chrome') !== FALSE)
   		$browser='Google Chrome';
 	elseif(strpos($browser, 'Opera Mini') !== FALSE)
   		$browser="Opera Mini";
 	elseif(strpos($browser, 'Opera') !== FALSE)
   		$browser="Opera";
 	elseif(strpos($browser, 'Safari') !== FALSE)
   		$browser="Safari";
 	else
   		$browser='Something else';
	return $browser;
}

public function get_user_permission_list($permit){
   
   $sql="";
   if($permit=="deactive")$sql="where status=0";
   if($permit=="active")$sql="where status=1";
   if($permit=="institute")$sql="where permit>5";
   if($permit=="techserm")$sql="where permit <=5";
   $sql=($sql!="")?"$sql and permit <8":"where permit<8";
   $sql="select id from user $sql";
   $info=$this->db->get_sql_array($sql);
   return $info;
}

public function user_permission_list(){
  $per=array();
  $sort_name=$this->db->sort_name;
  $per[1]="Super Admin";
  $per[2]="Admin";
  $per[3]="Manager";
  $per[4]="Engineer";
  
  $per[6]="$sort_name Admin";
  $per[7]="$sort_name Accountant";
  $per[8]="$sort_name Teacher";

return $per;
}

public function get_user_can_update_option($user_role,$login_user_role){
  $list=$this->user_permission_list();
  $option_list="<option value='-1'>Select User Role</option>";
  foreach ($list as $key => $value) {
    $role=$key;
    $select="";
    if($user_role<$login_user_role)continue;
    if($login_user_role>=$role)continue;
    if($role==$user_role)$select="selected";
    $option_list.="<option value='$role' $select>$value</option>";
  }
  echo "$option_list";
  return $option_list;
}

public function get_user_permission($permission){
  $get_per=$this->user_permission_list();
  return $get_per[$permission];
}



}


?>

