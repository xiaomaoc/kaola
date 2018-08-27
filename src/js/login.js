
    $(document).ready(function(){
            let username = $('#username');
            let password = $('#password');
            var btnReg = $(".btnReg");
            let status = [200,304];
           $(btnReg).on("click",function(){
                let _username = username.value;
                var _password = password.value;
                if (_username == '' || _password == '') {
                    return false;
                }
                let xhr = new XMLHttpRequest();

                xhr.onload = function(){
                    if(status.indexOf(xhr.status)>=0){
                        if(xhr.responseText == '1'){
                            alert('登录成功')
                            location = "../index.html"
                        }else {
                            alert('用户名或密码错误')
                        }
                    }

                }
                xhr.open('get',`../api/denglu.php?username=${_username}&password=${_password}`,true);
                
                // 发起请求 
                xhr.send();
           });
       });
            
                

            
       