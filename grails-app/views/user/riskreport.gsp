<%@page import="javax.servlet.ServletOutputStream; java.sql.Timestamp"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="net.sf.jasperreports.engine.export.JRRtfExporter"%>
<%@page import="net.sf.jasperreports.engine.JRExporter"%>
<%@page import="net.sf.jasperreports.engine.export.JRXlsExporter"%>
<%@page
        import="net.sf.jasperreports.engine.export.JRXlsExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.design.JasperDesign"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="net.sf.jasperreports.engine.util.JRLoader"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page
        import="net.sf.jasperreports.engine.export.JRHtmlExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.JRExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.export.JRHtmlExporter"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.io.File"%>
<%@page import="java.util.*"%>
<%@ page import="net.sf.jasperreports.engine.data.JRMapCollectionDataSource" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <% String path = request.getContextPath();
    String basePase = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
</head>
<body>
<span style="margin-left: 950px;cursor: pointer;"><a style="text-decoration: none;" href="../<%=basePase%>riskreport.jsp">导出文件</a></span>
<table border="1">

  <thead>
  <tr>
  <th>机构/结构</th>
  <th>监测对象</th>
  <th>监测点</th>
  <th>结果状态</th>
  </tr>
  </thead>
   <tbody>
    <tr>
        <td>1起升机构（起升和开闭)</td>
        <td>1.1制动器X4</td>
        <td>位置1：行程帽1</td>
        <td>1、正常；2、轻微异常，需要检查；3、严重异常，需要停机大修或更换。</td>
    </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置2：行程帽2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置3：行程帽3</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置4：行程帽4</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td>1.2驱动主电机X2</td>
       <td>位置1：输出端 X Y Z   （振动）</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td>1.3减速机X2</td>
       <td>位置1：高速轴外侧XYZ</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置2：电机地脚1内侧 Y Z</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置3：低速轴外侧XYZ </td>
       <td>正常</td>
   </tr><tr>
       <td></td>
       <td></td>
       <td>位置4：减速机高速轴上油封</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td>1.4钢丝绳</td>
       <td>位置1：卷筒支撑轴承XYZ</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置2：卷筒支撑轴承XYZ</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置3：S轮1</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置4：S轮2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置5：S轮3</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置6：S轮4</td>
       <td>正常</td>
   </tr><tr>
       <td>2变幅机构</td>
       <td>2.1减速机X1</td>
       <td>位置1：高速轴外侧XYZ</td>
       <td>正常</td>
   </tr><tr>
       <td></td>
       <td></td>
       <td>位置2：地脚1</td>
       <td>正常</td>
   </tr><tr>
       <td></td>
       <td></td>
       <td>位置3：低速轴外侧XYZ</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置4：减速机油窗上侧</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td>2.2齿条轴承</td>
       <td>位置1：上压轮12点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置2：上压轮6点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置3：1#下压轮12点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置4：1#压轮6点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置5：2#下压轮12点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置6：2#压轮6点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置7：驱动轮12点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td>2.3变幅电机</td>
       <td>位置2：轴端 X Y  Z（振动）</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td>2.4高速制动器</td>
       <td>位置1：传动轴输入X Y（振动)</td>
       <td>正常</td>
   </tr>
   <tr>
       <td>3、回转机构</td>
       <td>3.1回转电机 X2</td>
       <td>位置2：轴端 X Y Z（振动)</td>
       <td>正常</td>
   </tr>
   <tr>
       <td>1、门架结构</td>
       <td>焊缝</td>
       <td>位置1：圆筒与横梁下板焊接处（海侧）X2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置2：圆筒与横梁下板焊接处（陆侧）X2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置3：圆筒与上板环焊缝2点钟方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置4：圆筒与上板环焊缝4点钟方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置5：圆筒与上板环焊缝6点钟方向</td>
       <td>正常</td>
   </tr> <tr>
       <td></td>
       <td></td>
       <td>位置6：圆筒与上板环焊缝8点钟方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置7：圆筒与上板环焊缝10点钟方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置8：圆筒与上板环焊缝12点钟方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置9：横梁底端与端梁焊接处（海侧），角焊缝1</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置10：横梁底端与端梁焊接处（海侧），角焊缝2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置11：横梁底端与端梁焊接处（海侧），角焊缝3</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置12：横梁底端与端梁焊接处（海侧），角焊缝4</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置13：横梁底端与端梁焊接处（陆侧），角焊缝1</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置14：横梁底端与端梁焊接处（陆侧），角焊缝2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置15：横梁底端与端梁焊接处（陆侧），角焊缝3</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置16：横梁底端与端梁焊接处（陆侧），角焊缝4</td>
       <td>正常</td>
   </tr>
   <tr>
       <td>2、上转柱（人字架）</td>
       <td>焊缝</td>
       <td>位置1：角焊缝1</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置2：角焊缝2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置3：角焊缝3</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置4：角焊缝4</td>
       <td>正常</td>
   </tr>
   <tr>
       <td>5、主臂架</td>
       <td>1、大臂；2、耳板铰接处；3、耳板根部</td>
       <td>位置1：大臂右支座位置轴线上侧</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置2：大臂左支座位置轴线下侧</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置3：变幅齿条与主臂架铰接处12点方向</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置4：耳板根部 角焊缝1</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置5：耳板根部 角焊缝2</td>
       <td>正常</td>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td>位置6：耳板根部 角焊缝3</td>
       <td>正常</td>
   </tr>





































   </tbody>


</table>

</body>
</html>