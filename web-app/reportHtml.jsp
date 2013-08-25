<%@ page import="com.csei.risk.ReportService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String reportTemplate = this.getServletConfig().getServletContext().getRealPath(
            "/report/RiskReportTemplate.jasper");
    out.write(ReportService.exportRiskReport(reportTemplate));
    out.flush();
%>