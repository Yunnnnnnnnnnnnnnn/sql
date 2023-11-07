<?php
session_start();
date_default_timezone_set('Asia/Taipei');
$conn = new mysqli('localhost', 'root', '', 'testdbfromsql');
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}

if(isset($_POST['order'])){
    $order = $_POST['order'];
    $pro = $_POST['pro'];
    $price = $_POST['price'];
    $len = $_POST['len'];

    $sql = "INSERT INTO `訂單明細`(`訂單編號`, `產品編號`, `實際單價`, `數量`) VALUES ('$order','$pro','$price','$len')";
    if ($conn->query($sql)) {
        echo "新增成功";
        header("Location:http://localhost:8080/%E6%9C%9F%E4%B8%AD/detail.php?num=$order");
       
   } else {
        echo "新增失敗 " ;
        header("Location:http://localhost:8080/%E6%9C%9F%E4%B8%AD/detail.php?num=$order");
    }
}
else{?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>明細</title>
</head>

<body>
<form action="insertdetail.php" method="post" name="form1" id="form1">
<p>
    <label for="textfield">訂單編號:</label>
    <input name="order" type="text" autofocus readonly id="order" value=<?php echo $_GET['num'];?>>
  </p>
  <p>
    <label for="textfield">產品編號:</label>
    <input name="pro" type="text" autofocus required id="pro" size="10" maxlength="8">
  </p>
  <p>
    <label for="textfield">單價:</label>
    <input name="price" type="text" autofocus required id="price" size="10" maxlength="8">
  </p>
  <p>
    <label for="textfield">數量:</label>
    <input name="len" type="text" autofocus required id="len" size="10" maxlength="8">
  </p>
  <input type="submit" value="提交訂單"></p>
</form>
</body>
</html>
<?php
}
?>
