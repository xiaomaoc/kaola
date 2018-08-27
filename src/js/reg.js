
        $(document).ready(function(){
            var btnReg = $(".btnReg");
            var username = $('#username');
            var password = $('#password');
            // 定义一个变量用于存放 状态码
            let status = [200,304];
            // 是否能完成注册(一开始没有输入用户名 密码 是不能注册的  false)
            let isok = false;
            $(btnReg).on("click",function(){
                
                // 如果不ok就中段代码执行
                if(!isok){
                    return false;
                }
                // 获取 用户名 密码
                let _username = username.value;
                var _password = password.value;
                // 创建异步对象请求
                let xhr = new XMLHttpRequest();
                xhr.onload = function(){
                    // 判断状态码
                if(status.indexOf(xhr.status)>=0){
                    console.log(xhr.responseText);
                    }
                }
                // post请求
                xhr.open('post','../api/reg.php',true);
                // post请求必要要设置的 请求头:
                xhr.setRequestHeader('content-type',"application/x-www-form-urlencoded");
                // 发起请求 post
                xhr.send(`username=${_username}&password=${_password}`);
                alert('注册成功')
                location="login.html";
            });
            
            // 失去焦点时执行
            username.onblur = function(){
                // 获取输入的值
                let _username = username.value;
                // 异步请求对象
                let xhr = new XMLHttpRequest();
            // 处理数据
            xhr.onload = function(){
                if(status.indexOf(xhr.status) >= 0){
                    // username的父级div
                    let fu = username.parentNode;
                    // 返回的数据为yse
                    if(xhr.responseText === 'yes'){
                        // 继续执行
                        isok = true;
                        // 移除类名
                        fu.classList.remove('has-error');
                        // 添加类名（公共样式。。。）
                        fu.classList.add('has-success');
                        // 没有用过的用户名提示就为空
                        username.nextElementSibling .innerText = '';
                        // 返回数据为no
                    }else if(xhr.responseText === 'no'){
                        // 中断执行
                        isok = false;
                        // 移除类名
                        fu.classList.remove('has-success');
                        // 添加类名
                        fu.classList.add('has-error');
                        // 用过的用户名提示已存在
                        username.nextElementSibling.innerText = '用户名已存在';
                    }
                }

            }
            // 配置参数  get请求的数据写在？号后面
            xhr.open('get','../api/zhuce.php?username='+_username,true);
            // 发起请求
            xhr.send();
        }
    });
            
            
        
   