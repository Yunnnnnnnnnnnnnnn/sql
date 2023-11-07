<?php
session_start();
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
$id = $_POST['stuID'];
$pwd = $_POST['password'];
$timestamp = strtotime($pwd);
$pwd = date('Y-m-d', $timestamp);

$sql = "SELECT count(*) FROM `員工` WHERE `姓名` = '$id'  and `出生日期` =  '$pwd'";
$result = $conn->query($sql);
$row = $result->fetch_row();

$sql2 = "SELECT * FROM `員工` WHERE `姓名` = '$id'  and `出生日期` =  '$pwd'";
$result2 = $conn->query($sql2);
$row1 = $result2->fetch_assoc();

$num = $row1['員工編號'];
$_SESSION['num'] = $num;
$_SESSION['name'] = $row1['姓名'];
$_SESSION['address'] = $row1['地址'];
$_SESSION['career'] = $row1['職稱'];

if($row[0] == 1){
    echo '登入成功';
    echo '</br>';
    echo "<h1>修改帳號內容</h1><br>";
    echo "<form action='update.php' method='post'>";
    echo '<label for="textInput">姓名:</label>';
    echo '<input type="text" id="name" name="name"><br><br>';
    echo '<label for="selectBox1">職稱:</label>';
    echo '<select id="select" name="select">';
    echo '<option value="工程師">工程師</option>';
    echo '<option value="業務">業務</option>';
    echo '</select><br><br>';
    echo '<label for="textInput">地址:</label>';
    echo '<input type="text" id="address" name="address"><br><br>';
    echo '<input type="submit" value="修改"><br>';
    echo "</form>";
    echo "<a href='delete.php?name=$id&pwd=$pwd'>註銷帳號</a><br>";
    echo "<a href='checkorder.php?name=$id&pwd=$pwd&num=$num'>查看訂單</a><br>";
    echo "<a href='order.php?num=$num'>新增訂單</a><br>";
}else{
    echo '登入失敗';
}

?>
