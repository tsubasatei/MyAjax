<%--
  Created by IntelliJ IDEA.
  User: XT
  Date: 2019/3/23
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <!--
    1. 导入 jQuery 库
    2. 获取 name="username" 的节点：username
    3. 为 username 添加 change 响应函数
    3.1 获取 username 的 value 属性值，去除前后空格且不为空。准备发送 Ajax 请求
    3.2 发送 Ajax 请求校验 username 是否可用
    3.3 在服务端直接返回一个 html 的片段 <font color="red">该用户名已经被使用</font>
    3.4 在客户端浏览器把其直接添加到 #message 的html 中
    -->
    <script src="../jquery-1.7.2.js"></script>
    <script>
        $(function () {
            $(":input[name='username']").change(function () {
                var name = this.value;
                name = $.trim(name);
                if(name != ""){
                    var url = "${pageContext.request.contextPath}/validateUsername";
                    var args = {"username":name, "time":new Date()};
                    $.post(url, args, function (data) {
                        $("#message").html(data);
                    });
                }
            })
        })
    </script>
</head>
<body>
    <form action="" method="post">
        Username: <input type="text" name="username"/>
        <br>
        <div id="message"></div>
        <br>
        <input type="submit" value="Submit"/>
    </form>
</body>
</html>
