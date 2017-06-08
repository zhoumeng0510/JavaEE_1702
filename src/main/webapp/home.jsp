<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017.6.7
  Time: 下午 03:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="color: red">主页</h1>
<h3 style="color: orange">欢迎来到德莱联盟：赵子龙</h3>
<h5 style="color: green">一点寒芒先到，随后枪出如龙！</h5>
<h5 style="color: green">即使敌众我寡，末将亦能万军丛中取敌将首级！</h5>
<h5 style="color: green">陷阵之志，有死无生！</h5>
<h5 style="color: green">他们的生命已被依法剥夺！</h5>
<h5 style="color: green">没有人能够突破我的枪围！</h5>
<h5 style="color: green">命运已做出了它的选择！</h5>
<h5 style="color: green">请不要烦我！</h5>
<h5 style="color: green">奉吾王之命！</h5>
<h5 style="color: green">在问德玛西亚能给你什么好处之前，请先关心一下你挡路的下场。</h5>
<h5 style="color: green">交给我了！</h5>
<h5 style="color: green">即将凯旋！</h5>
<h5 style="color: green">勇士之魂，从未破灭！</h5>
<h5 style="color: green">德玛西亚人从不退缩！</h5>
<h5 style="color: green">胜利在呼唤！</h5>
<h5 style="color: green">勇往直前！</h5>
<h5 style="color: green">击鼓，进军！</h5>
<h5 style="color: green">只有行动才能说明一切！</h5>
<h2> ----------------</h2>
<h1 style="color: darkblue"><p>|.あ<%=session.getAttribute("nick")%>あ.|</p></h1>
<h2> ----------------</h2>
<a href="second.jsp">下一页</a>
<%
    pageContext.setAttribute("key", "value");
    application.setAttribute("app-key", "app-value");
%>
<%=pageContext.getAttribute("key")%>
<%=application.getAttribute("app-key")%>
</body>
</html>
