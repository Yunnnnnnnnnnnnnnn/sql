<?php
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
$name = $_GET['name'];
$pwd = $_GET['pwd'];

$sql = "DELETE FROM `員工` WHERE `姓名`='$name' and `出生日期`='$pwd'";
$result=$conn->query($sql);

if ($conn->query($sql) === TRUE) {
    echo '刪除成功';
  } else {
    echo "Error: " . $conn->error;
  }

?>