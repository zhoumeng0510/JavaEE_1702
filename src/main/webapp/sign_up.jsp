<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017.6.7
  Time: 上午 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sign up page</title>
</head>
<body>
<h1>注册</h1>
<pre>
Ctrl + Shift + F10
Ctrl + Shift + R

Shift + Alt + F10
Ctrl + Option + R

</pre>
<form action="user" method="post">
    <input type="hidden" name="action" value="register">
    <input type="text" name="nick" placeholder="昵称"><br>
    <input type="text" name="mobile" placeholder="手机号"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="注册">
</form>
<%
    String message = (String) request.getAttribute("message");
    if (message != null) {
        out.print(message);
    }
%>
</body>
</html>