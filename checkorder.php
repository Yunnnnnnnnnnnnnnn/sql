<?php
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
$name = $_GET['name'];
$pwd = $_GET['pwd'];
$num = $_GET['num'];
$order = array();
$sql = "SELECT `訂單編號` FROM `訂單` WHERE `員工編號` = $num";

$result = $conn->query($sql);
if ($result) {
    while($row = $result->fetch_row()) {
        echo "<a href='detail.php' style='font-size:20pt;'>".$row['0']."</a><br>";
    }
}
print_r($order)

?>