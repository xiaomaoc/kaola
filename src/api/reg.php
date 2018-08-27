<?php
    // 引入connect.php
    include 'connect.php';
    /*
        接口功能：用户注册
            * 写入数据库
        所需参数：
            * username
            * password
     */
    
    $username = isset($_POST['username']) ? $_POST['username']:null;
    $password = isset($_POST['password']) ? $_POST['password']:null;
    // 把注册的用户名 密码添加到数据库
    $sql = "insert into zhuce (name,password) values ('$username','$password')";
    /*执行spl语句*/
    $result = $conn->query($sql);
    if($result){
        echo "注册成功";
    }else{
        echo "注册失败";
    }
?>