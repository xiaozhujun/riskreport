<%@ page import="java.io.File" %>
<%@ page import="net.sf.jasperreports.engine.JasperReport" %>
<%@ page import="net.sf.jasperreports.engine.util.JRLoader" %>
<%@ page import="net.sf.jasperreports.engine.JasperPrint" %>
<%@ page import="net.sf.jasperreports.engine.JasperFillManager" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="net.sf.jasperreports.engine.export.JRHtmlExporter" %>
<%@page
        import="net.sf.jasperreports.engine.export.JRHtmlExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.JRExporterParameter"%>
<%@ page import="cn.com.jr.RiskReportDataSource" %>
<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 13-8-25
  Time: 下午1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
   <%

       File reportFile = new File(this.getServletConfig().getServletContext().getRealPath(
               "/report/inspectReport.jasper"));
       JasperReport jasperReport = (JasperReport) JRLoader
               .loadObject(reportFile.getPath());
       RiskReportDataSource ds=new RiskReportDataSource();
       ServletOutputStream ouputStream = response.getOutputStream();


           response.setContentType("text/html");
           JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile.getPath(),new HashMap(),ds);

           JRHtmlExporter exporter = new JRHtmlExporter();
           exporter.setParameter(
                   JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN,
                   Boolean.FALSE);
           exporter.setParameter(JRExporterParameter.JASPER_PRINT,
                   jasperPrint);
           exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING,
                   "UTF-8");
           exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
                   ouputStream);

           exporter.exportReport();

           ouputStream.flush();
           ouputStream.close();
           out.clear();
           out=pageContext.pushBody();

   %>
</body>
</html>