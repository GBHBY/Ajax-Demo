<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
    <script>
        $(function () {
            $("#userName").blur(function () {
                var name = $(this).val()
                $.post("user/testAjax", {userName: name}, function (data) {
                    $("span").text("")
                    if (data == 1) {
                        $("span").html("<font color='#a52a2a'> 用户名被占用 </font>");
                    }
                    if (data == 2) {
                        $("span").text("");
                    }
                    if (data == 3) {
                        $("span").html(" <font color='blue'> 可用 </font>");
                    }
                })

            })

            $("#userName").focus(function () {
                var name = $(this).val()
                $.post("user/testAjax", {userName: name}, function (data) {
                    $("span").text("")
                    if (data == 1) {
                        $("span").html("<font color='#a52a2a'> 用户名被占用 </font>");
                    }
                    if (data == 2) {
                        $("span").text("");
                    }
                    if (data == 3) {
                        $("span").html(" <font color='blue'> 可用 </font>");
                    }
                })

            })

        })
    </script>
</head>
<body>
用户名：<input type="text" name="" id="userName"><span></span><br>
密码 <input type="text" name="" id="password"> <br>


</body>
</html>