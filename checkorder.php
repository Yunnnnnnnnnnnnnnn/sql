<?php
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}

if(isset($_POST['cus'])){
    $pay = $_POST['pay'];
    $deli = $_POST['deli'];
    $num = $_POST['num'];
    echo $num;
    $sql = "UPDATE `訂單` SET `付款方式`='$pay',`交貨方式`='$deli' WHERE `訂單編號`='$num'";
    if ($conn->query($sql) === TRUE) {
        echo '修改成功';
        //header("Location:http://localhost:8080/期中/hom.html");
      } else {
        echo "Error: " . $conn->error;
        header("Location:http://localhost:8080/期中/hom.html");
    }
}else{
    $name = $_GET['name'];
    $pwd = $_GET['pwd'];
    $num = $_GET['num'];
    $order = array();
    $sql = "SELECT * FROM `訂單` WHERE `員工編號` = $num";
    $result = $conn->query($sql);
    if ($result) {
        while($row = $result->fetch_assoc()) {
            echo "<form action='checkorder.php' method='post'>";
            echo "訂單編號:";
            echo "<input name='num' type='text' id='num' readonly value='".$row['訂單編號']."' style='display:none;'>";
            echo "<a href='detail.php?num=".$row['訂單編號']."'style='font-size:20pt;'>".$row['訂單編號']."</a><br>";
            echo "員工編號:";
            echo "<input name='cus' type='text' id='cus' readonly value='".$row['員工編號']."'>";
            echo "<label for='textfield'>付款方式:</label>";
            echo "<select name='pay'>";
            echo "<option value='".$row['付款方式']."' selected='True'>".$row['付款方式']."</option>";
            echo "<option value='信用卡'>信用卡</option>";
            echo "<option value='現金'>現金</option>";
            echo "<option value='支票'>支票</option>";
            echo "</select>";
            echo "<label for='textfield'>交貨方式:</label>";
            echo "<select name='deli'>";
            echo "<option value='".$row['交貨方式']."' selected='True'>".$row['交貨方式']."</option>";
            echo "<option value='郵遞'>郵遞</option>";
            echo "<option value='快遞'>快遞</option>";
            echo "<option value='空運'>空運</option>";
            echo "<input type='submit' name='submit' id='submit' value='修改'>";
            echo "<br>";
            echo "<br>";
            echo "</form>";
        }
    }

}


?>