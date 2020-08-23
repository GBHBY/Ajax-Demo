<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/8/21
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,inital" />
    <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_1852970_dhw3piadm5j.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <script  src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"/>
    <title>Login</title>

    <script type="text/javascript">
        $(function () {
            //登录按钮事件
            $("#submitBtn").click(function () {
                //检查登录信息
                if ($('#username').val() === '') {
                    $.messager.alert("提示", "请输入用户名 !", "warning");
                } else if ($('#password').val() === '') {
                    $.messager.alert("提示", "请输入密码 !", "warning");
                }  else {
                    //提交用户的登录表单信息
                    var data = $("#form").serialize();
                    $.ajax({
                        type: "post",
                        url: "user/logIn",
                        data: data,
                        dataType: "json",
                        success: function (data) {
                            if (data.success) {
                                window.location.href = "demo";//进入系统主页面
                            } else {
                                $.messager.alert("提示", data.msg, "warning");
                            }
                        }
                    });
                }
            });
            //设置复选框
            $(".skin-minimal input").iCheck({
                radioClass: 'iradio-blue',
                increaseArea: '25%'
            });
        })
    </script>
</head>
<body>
<div class="form-wrapper">
    <div class="header">
        login
    </div>
    <div class="input-wrapper">
        <div class="border-wrapper">
            <input id="username" type="text" name="username" placeholder="username" class="border-item" />
        </div>
        <div class="border-wrapper">
            <input id="password" type="password" name="password" placeholder="password" class="border-item" />
        </div>
    </div>
    <div class="action">
        <div class="btn" id="submitBtn">login</div>
    </div>
    <div class="icon-wrapper">
        <i class="iconfont icon-twitterlogo"></i>
        <i class="iconfont icon-github1"></i>
        <i class="iconfont icon-facebook-fill"></i>
        <i class="iconfont icon-weibo-copy"></i>
        <i class="iconfont icon-weixin"></i>
    </div>

</div>

</body>
</html>
