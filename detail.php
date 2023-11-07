<?php
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}


?>