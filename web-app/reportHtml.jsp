<html>
<%@ page import="com.csei.risk.ReportService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
  <head>
      <title></title>
      <% String path = request.getContextPath();
          String basePase = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
  </head>
<body>
<div style="margin-left: 800px;cursor: pointer;margin-top:2px;" class="tabItem"><a style="text-decoration: none;" href="<%=basePase%>riskreport.jsp">导出报告</a></div>
<%
    String reportTemplate = this.getServletConfig().getServletContext().getRealPath(
            "/report/RiskReportTemplate.jasper");
    out.write(ReportService.exportRiskReport(reportTemplate));
    out.flush();
%>

</body>
</html>