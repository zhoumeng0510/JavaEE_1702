<%@ page import="org.gjt.mm.mysql.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017.6.7
  Time: 下午 02:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String tel = request.getParameter("tel");
    String pw = request.getParameter("pw");

    new Driver();
    Connection connection = DriverManager.getConnection("jdbc:mysql:///?user=root&password=system");
    String sql = "SELECT * FROM db_javaee.user WHERE tel=? AND pw=?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, tel);
    statement.setString(2, pw);
    ResultSet resultSet = statement.executeQuery();
    if (resultSet.next()) {
        // success
        response.sendRedirect("home.jsp");//redirect 重定向
    } else {
        // failed
//        response.sendRedirect("index.jsp");// redirect 重定向 地址栏地址有变化
        request.setAttribute("message","手机号或密码错误");
        request.getRequestDispatcher("index.jsp").forward(request, response);// forward 转发 地址栏地址没有变化
    }

%>
</body>
</html>
