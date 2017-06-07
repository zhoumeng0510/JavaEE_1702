<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017.6.6
  Time: 下午 04:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String nick = request.getParameter("nick");
    out.println(nick);
    String tel = request.getParameter("tel");
    out.println(tel);
    String pw = request.getParameter("pw");
    out.println(pw);
%>
</body>
</html>
