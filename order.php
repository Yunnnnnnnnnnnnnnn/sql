<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>註冊</title>
</head>

<body>
<form action="order1.php" method="post" name="form1" id="form1">
<p>
    <label for="textfield">員工編號:</label>
    <input name="num" type="text" autofocus readonly id="num" size="10" maxlength="8" value="<?php echo $_GET['num'];?>">
  </p>
  <p>
    <label for="textfield">客戶編號:</label>
    <input name="customer" type="text" autofocus required id="customer" size="10" maxlength="8">
  </p>
  <p>訂貨日期: <input type="date" name="order_date"><br></p>
  <p>出貨日期: <input type="date" name="ship_date"><br></p>
  <p>預計到貨日期: <input type="date" name="expected_arrival_date"><br></p>
  <p>實際到貨日期: <input type="date" name="actual_arrival_date"><br></p>
  <p>
    <label for="textfield">付款方式:</label>
  <select name="payment">
    <option value="現金" selected="True">現金</option>
    <option value="信用卡">信用卡</option>
 </select><br/>
</p>
<p>
    <label for="textfield">交貨方式</label>
  <select name="delivery">
    <option value="空運" selected="True">空運</option>
    <option value="郵寄">郵寄</option>
    <option value="快遞">快遞</option>
 </select><br/>
  <input type="submit" value="提交訂單"></p>
</form>
</body>
</html>
