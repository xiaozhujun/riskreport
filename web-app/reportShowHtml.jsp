<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 13-8-25
  Time: 下午5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="styles/report.css" type="text/css">
</head>
<body>
    <jsp:include page="nav.jsp"></jsp:include>
    <div id="reportContent">
        <div id="reportLeft">
            <jsp:include page="leftusermenu.jsp"></jsp:include>
        </div>
        <div id="reportRight">
            <jsp:include page="reportHtml.jsp"></jsp:include>
        </div>
    </div>
</body>
</html>