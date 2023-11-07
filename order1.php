<?php
session_start();
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}

$num = $_POST['num'];
$customer = $_POST['customer'];
$order_date = $_POST['order_date'];
$ship_date = $_POST['ship_date'];
$expected_arrival_date = $_POST['expected_arrival_date'];
$actual_arrival_date = $_POST['actual_arrival_date'];
$payment = $_POST['payment'];
$delivery = $_POST['delivery'];

$sql = "SELECT max(`訂單編號`) FROM `訂單`";
$result = $conn->query($sql);
$row = $result->fetch_row();
$max = $row[0]+1;

$sql = "INSERT INTO `訂單`(`訂單編號`, `員工編號`, `客戶編號`, `訂貨日期`, `出貨日期`, `預計到貨日期`, `實際到貨日期`, `付款方式`, `交貨方式`)";
$sql .= "VALUES ('$max','$num','$customer','$order_date','$ship_date','$expected_arrival_date','$actual_arrival_date','$payment','$delivery')";
if ($conn->query($sql)) {
  echo "新增成功";
  
} else {
  echo "新增失敗" ;
}
?>
<hr/>| <a href="hom.html">回登入首頁</a>;