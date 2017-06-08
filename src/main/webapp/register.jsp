<%@ page import="org.gjt.mm.mysql.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
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

    // TODO: 6/8/17 验证 nick mobile 的存在性

    new Driver();
    Connection connection = DriverManager.getConnection("jdbc:mysql:///?user=root&password=system");
    String sql = "INSERT INTO db_javaee.user VALUE (NULL ,?,?,?)";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, nick);
    statement.setString(2, tel);
    statement.setString(3, pw);
    statement.executeUpdate();

    statement.close();
    connection.close();

    response.sendRedirect("index.jsp"); // ?
%>
</body>
</html>
