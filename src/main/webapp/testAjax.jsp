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
                $.post("user/testAjax", function (data) {
                    for (var i = 0; i < data.length; i++) {
                        if($("#userName").val()==data[i]){
                          $("#userName").after("<b>存在</b> ")
                        }else{
                            $("#userName").after("大苏打撒旦")

                        }
                    }
                })

            })

        })
    </script>
</head>
<body>
用户名：<input type="text" name="" id="userName"> <br>
密码 <input type="text" name="" id="password"> <br>


</body>
</html>