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
    out.print(nick);
%>
</body>
</html>
