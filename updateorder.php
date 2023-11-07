<?php
session_start();
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}

$num = $_GET['num'];
$pro = $_GET['pro'];
$price = $_GET['price'];
$len = $_GET['len'];

$sql = "UPDATE `訂單明細` SET `實際單價`='$price',`數量`='$len' WHERE `訂單編號`='$num' and `產品編號`='$pro'";
if ($conn->query($sql) === TRUE) {
    echo '修改成功';
  } else {
    echo "Error: " . $conn->error;
}
?>