<?php
session_start();
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
$num = $_SESSION['num'];
if($_POST['name'] != ''){
    $name = $_POST['name'];
}else{
    $name = $_SESSION['name'];
}

if($_POST['address'] != ''){
    $address = $_POST['address'];
}else{
    $address = $_SESSION['address'];
}
if($_POST['select'] != ''){
    $career = $_POST['select'];
}else{
    $career = $_SESSION['career'];
}

$sql = "UPDATE `員工` SET `姓名` = '$name',`職稱`='$career',`地址`='$address' where `員工編號` = '$num'";

if ($conn->query($sql) === TRUE) {
    echo '修改成功';
  } else {
    echo "Error: " . $conn->error;
}


?>