<?php

$kuname = "localhost";  //数据库所在的位置
$yhname = "root";   //登录数据库用户名
$password = "";       //登录数据库密码
$bname = 'mao';  //数据库名

$conn = new mysqli($kuname, $yhname, $password, $bname);


if($conn->connect_error){
    die ("连接失败: " . $conn->connect_error);
}

//连接后设置编码，防止输出乱码
$conn->set_charset("utf8");

?>