<?php

     include 'connect.php';

    $username = isset($_GET['username']) ? $_GET['username']:'';
    $password = isset($_GET['password']) ? $_GET['password']:'';

    $sql = "select * from zhuce where name='$username' and password='$password'";

    // 执行sql语句
    $result = $conn->query($sql);

    if($result->num_rows>0){
        echo "1";
    }else{
        echo "0";
    };
       
      

?>