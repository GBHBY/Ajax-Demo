<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/8/21
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"/>

    <script type="text/javascript">
        function requestJson(){
            var name =$("#userName").val();//#是id选择器
            var pwd =$("#password").val();
            if(name==""){
                alert("用户名不能为空！");
                return false;
            }
            else if(pwd==" "){
                alert("密码不能为空！");
                return false;
            }
            else
            {
                $.ajax({
                    type:'post',
                    url:'user/logIn',
                    dataType:"json",//注意使用的是打他dataType，而不是Content-Type
                    async: true,
                    data:{userName:name,paasword:pwd},
                    success:function(data){
                        if(data==null){
                            alert("没有这个用户！")
                        }
                        else{
                            alert("登录成功")
                            window.location.href ="main";
                        }
                    }
                });
            }
        }
    </script>
</head>
<body>
<form id="login_form" action="user/logIn"  method="post">
    姓名：<input type="text" name="userName">
    <br>
    密码：<input type="text" name="password">
    <br>
    提交：<input type="submit" value="提交">

</form>

</body>
</html>
