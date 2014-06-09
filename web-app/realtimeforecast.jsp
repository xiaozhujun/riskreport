<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 13-8-29
  Time: 上午10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="js/changeColor.js"></script>
    <script src="js/getParam.js"></script>
     <link rel="stylesheet" href="css/table.css">
</head>
<body onload="blinkit()">
  <jsp:include page="nav.jsp"></jsp:include>
  <div id="left"><jsp:include page="TreeMenu.jsp"></jsp:include></div>
  <div id="content"></div>
</body>
</html>