<html>
<%@ page import="com.csei.risk.ReportService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
    <title>报表浏览</title>
    <% String path = request.getContextPath();
        String basePase = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
    <link rel="stylesheet" href="css/reportList.css">

</head>
<body>
<div class="title">
    <span class="title-font">健康诊断报告</span>
</div>
<div  class="reportListDiv">
    <a href="safetyReport/healthReport.pdf" target="_blank">
        <div class="reportItemDiv">
           <div class="reportIconDiv"><img src="images/report/reportIcon.png" width="300"></div>
           <div class="reportTitleDiv">健康诊断报告20140217</div>
        </div>
    </a>
</div>
</body>
</html>