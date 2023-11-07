<?php
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
	$id = $_POST['stuID'];
	$pwd = $_POST['password'];
	$career = $_POST['career'];
	$sex= $_POST['sex'];
	$adress= $_POST['stuID3'];
	$sql = $sql = "select max(c.員工編號) from 員工 c ";
	$result = $conn->query($sql);
	
	$row = $result->fetch_row();
	$num = $row[0]+1;

	if($career == "工程師"){
		$manager = 4;
	}else{
		$manager = 10;
	}
$currentDateTime = date('Y-m-d');
$Number = rand(100, 500);
$phone = rand(1500, 3000);
	$sql="INSERT INTO `員工`(`員工編號`, `姓名`, `職稱`, `性別`, `主管`, `出生日期`, `任用日期`, `區域號碼`, `地址`, `分機號碼`) ";
	$sql.="VALUES ($num,'".$id."','".$career."','".$sex."',$manager,'".$pwd."','".$currentDateTime."',$Number,'".$adress."',$phone)";
	//$result = $conn->query($sql);
	 if ($conn->query($sql)) {
	 	echo "註冊成功，回登入畫面";
		
	} else {
	 	echo "註冊失敗，需重新註冊 " ;
	 }
?>
<hr/>| <a href="hom.html">回登入首頁</a>;