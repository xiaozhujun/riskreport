<html>
<%@ page import="com.csei.risk.ReportService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
  <head>
      <title>报表浏览</title>
      <% String path = request.getContextPath();
          String basePase = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
  <link rel="stylesheet" href="css/table.css">
  </head>
<body>
<div class="title">
    <span class="title-font">起重机安全监测评估</span>
</div>
<div  class="daochu"><span class="b"><a  href="../riskreport/riskreportservlet">导出报告</a></span></div>
<%
    String reportTemplate = this.getServletConfig().getServletContext().getRealPath(
            "/report/RiskReportTemplate.jasper");
    out.write(ReportService.exportRiskReport(reportTemplate));
    out.flush();
%>

</body>
</html>