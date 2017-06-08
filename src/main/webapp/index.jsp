<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017.6.6
  Time: 上午 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index pag</title>
</head>
<body>
<h1>登录</h1>
<form action="login.jsp">
    <input type="text" name="tel" placeholder="手机号"><br>
    <input type="password" name="pw" placeholder="密码"><br>
    <input type="submit" value="登录"><br>
</form>
<%--<%=(request.getAttribute("message") != null) ? request.getAttribute("message") : ""%>--%>
<p>
    <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
            out.print(message);
        }
    %>
</p>
<a href="sign_up.jsp">注册</a>
</body>
</html>
