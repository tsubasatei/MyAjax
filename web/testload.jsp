<%--
  Created by IntelliJ IDEA.
  User: XT
  Date: 2019/3/23
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="jquery-1.7.2.js"></script>
    <script>
        $(function () {
            $("a").click(function () {
                // 使用 load 方法处理 Ajax
                var url = this.href;
                var args = {"time":new Date()};
                $("#content").load(url,args);

                return false;
            });
        })
    </script>
</head>
<body>
    <a href="helloAjax.txt">Hello Ajax</a>
    <div id="content"></div>
</body>
</html>
