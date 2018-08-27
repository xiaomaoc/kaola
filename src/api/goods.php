<?php

require "connect.php";


$a=$_GET["pid"];

$sql="select * from pruduct where id=".$a;
$b=$conn->query($sql);
$a=$b->fetch_all(MYSQLI_ASSOC);
$cate1=json_encode($a,JSON_UNESCAPED_UNICODE);

//释放查询结果集
$b->close();
//输出结果
echo $cate1;

?>