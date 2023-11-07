<?php
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
if(isset($_GET['order'])){
    $num = $_GET['order'];
    $pro = $_GET['pro'];
    $sql = "DELETE FROM `訂單明細` WHERE `訂單編號`='$num' and `產品編號`='$pro'";
    $result=$conn->query($sql);

    if ($conn->query($sql) === TRUE) {
        echo '刪除成功';
    } else {
        echo "Error: " . $conn->error;
    }
    header("Location:http://localhost:8080/%E6%9C%9F%E4%B8%AD/detail.php?num=$num");
}
elseif(isset($_GET['delete'])){
    $order = $_GET['delete'];
    $sql =  "DELETE FROM `訂單明細`WHERE `訂單編號`='$order'";
    $sql2 =  "DELETE FROM `訂單`WHERE `訂單編號`='$order'";
    if (($conn->query($sql) === TRUE) && ($conn->query($sql2) === TRUE)) {
        echo '刪除成功';
    } else {
        echo "Error: " . $conn->error;
    }
    header("Location:http://localhost:8080/期中/hom.html");
}
else{
    $num = $_GET['num'];
    $sql = "SELECT * FROM `訂單明細` WHERE `訂單編號` = '$num'";
    $result = $conn->query($sql);

    if ($result) {
        while ($row = $result->fetch_assoc()) {
            echo "<form action='updateorder.php' method='get'>";
            echo "訂單編號:";
            echo "<input name='num' type='text' id='num' readonly value='".$row['訂單編號']."'>";
            echo "產品編號:";
            echo "<input name='pro' type='text' id='pro' readonly value='".$row['產品編號']."'>";
            echo "單價:";
            echo "<input name='price' type='text' id='price' value='".$row['實際單價']."'>";
            echo "數量:";
            echo "<input name='len' type='text' id='len' value='".$row['數量']."'>";
            echo "<input type='submit' name='submit' id='submit' value='修改'>";
            echo "<a href='detail.php?order=".$row['訂單編號']."&pro=".$row['產品編號']."'>刪除</a>";
            echo "<br>";
            echo "<br>";
            echo "</form>";
        }
    } else {
        echo "查詢錯誤: " . $conn->error;
    }
    echo "<a href='insertdetail.php?num=$num'>新增訂單明細</a><br>";
    echo "<a href='detail.php?delete=$num'>刪除整筆訂單</a>";
}
?>
<?php



?>