package com.csei.risk;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRMapCollectionDataSource;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import net.sf.jasperreports.engine.export.JRHtmlExporter;
import net.sf.jasperreports.engine.export.JRHtmlExporterParameter;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 * Created with IntelliJ IDEA.
 * User: xiaozhujun
 * Date: 13-8-25
 * Time: 下午6:59
 * To change this template use File | Settings | File Templates.
 */
public class ReportService {
    public static String exportRiskReport(String reportTemplate) throws JRException {        //以javabean作为数据源
        ArrayList reportRows=new ArrayList();
        HashMap row1Map=new HashMap();
        HashMap row2Map=new HashMap();
        HashMap row3Map=new HashMap();
        HashMap row4Map=new HashMap();
        HashMap row5Map=new HashMap();
        HashMap row6Map=new HashMap();
        HashMap row7Map=new HashMap();
        HashMap row8Map=new HashMap();
        HashMap row9Map=new HashMap();
        HashMap row10Map=new HashMap();
        HashMap row11Map=new HashMap();
        HashMap row12Map=new HashMap();
        HashMap row13Map=new HashMap();
        HashMap row14Map=new HashMap();
        HashMap row15Map=new HashMap();
        HashMap row16Map=new HashMap();
        HashMap row17Map=new HashMap();
        HashMap row18Map=new HashMap();
        HashMap row19Map=new HashMap();
        HashMap row20Map=new HashMap();
        HashMap row21Map=new HashMap();
        HashMap row22Map=new HashMap();
        HashMap row23Map=new HashMap();
        HashMap row24Map=new HashMap();
        HashMap row25Map=new HashMap();
        HashMap row26Map=new HashMap();
        HashMap row27Map=new HashMap();
        HashMap row28Map=new HashMap();
        HashMap row29Map=new HashMap();
        HashMap row30Map=new HashMap();
        HashMap row31Map=new HashMap();
        HashMap row32Map=new HashMap();
        HashMap row33Map=new HashMap();
        HashMap row34Map=new HashMap();
        HashMap row35Map=new HashMap();
        HashMap row36Map=new HashMap();
        HashMap row37Map=new HashMap();
        HashMap row38Map=new HashMap();
        HashMap row39Map=new HashMap();
        HashMap row40Map=new HashMap();
        HashMap row41Map=new HashMap();
        HashMap row42Map=new HashMap();
        HashMap row43Map=new HashMap();
        HashMap row44Map=new HashMap();
        HashMap row45Map=new HashMap();
        HashMap row46Map=new HashMap();
        HashMap row47Map=new HashMap();
        HashMap row48Map=new HashMap();
        HashMap row49Map=new HashMap();
        HashMap row50Map=new HashMap();
        HashMap row51Map=new HashMap();
        HashMap row52Map=new HashMap();
        HashMap row53Map=new HashMap();
        HashMap row54Map=new HashMap();
        HashMap row55Map=new HashMap();
        row1Map.put("struture","1起升机构（起升和开闭");
        row1Map.put("object","1.1制动器X4");
        row1Map.put("point","位置1：行程帽1：");
        row1Map.put("result","正常");
        row2Map.put("struture","");
        row2Map.put("object","");
        row2Map.put("point","位置2：行程帽2");
        row2Map.put("result","正常");
        row3Map.put("struture","");
        row3Map.put("object","");
        row3Map.put("point","位置3：行程帽3");
        row3Map.put("result","正常");
        row4Map.put("struture","");
        row4Map.put("object","");
        row4Map.put("point","位置4：行程帽4");
        row4Map.put("result","正常");
        row5Map.put("struture","");
        row5Map.put("object","1.2驱动主电机X2");
        row5Map.put("point","位置1：输出端 X Y Z   （振动）");
        row5Map.put("result","正常");
        row6Map.put("struture","");
        row6Map.put("object","1.3减速机X2");
        row6Map.put("point","位置1：高速轴外侧XYZ");
        row6Map.put("result","正常");
        row7Map.put("struture","");
        row7Map.put("object","");
        row7Map.put("point","位置2：电机地脚1内侧 Y Z");
        row7Map.put("result","正常");
        row8Map.put("struture","");
        row8Map.put("object","");
        row8Map.put("point","位置3：低速轴外侧XYZ ");
        row8Map.put("result","正常");
        row9Map.put("struture","");
        row9Map.put("object","");
        row9Map.put("point","位置4：减速机高速轴上油封 ");
        row9Map.put("result","正常");
        row10Map.put("struture","");
        row10Map.put("object","1.4钢丝绳");
        row10Map.put("point","位置1：卷筒支撑轴承XYZ");
        row10Map.put("result","正常");
        row11Map.put("struture","");
        row11Map.put("object"," ");
        row11Map.put("point","位置2：卷筒支撑轴承XYZ ");
        row11Map.put("result","正常");
        row12Map.put("struture","");
        row12Map.put("object","");
        row12Map.put("point","位置3：S轮1 ");
        row12Map.put("result","正常");
        row13Map.put("struture","");
        row13Map.put("object","");
        row13Map.put("point","位置4：S轮2 ");
        row14Map.put("result","正常");
        row14Map.put("struture","");
        row14Map.put("object","");
        row14Map.put("point","位置5：S轮3 ");
        row14Map.put("result","正常");
        row15Map.put("struture","");
        row15Map.put("object","");
        row15Map.put("point","位置6：S轮4");
        row15Map.put("result","正常");
        row16Map.put("struture","2变幅机构");
        row16Map.put("object","2.1减速机X1");
        row16Map.put("point","位置1：高速轴外侧XYZ ");
        row16Map.put("result","正常");
        row17Map.put("struture","");
        row17Map.put("object","");
        row17Map.put("point","位置2：地脚1 ");
        row17Map.put("result","正常");
        row18Map.put("struture","");
        row18Map.put("object","");
        row18Map.put("point","位置3：低速轴外侧XYZ");
        row18Map.put("result","正常");
        row19Map.put("struture","");
        row19Map.put("object","");
        row19Map.put("point","位置4：减速机油窗上侧");
        row19Map.put("result","正常");
        row20Map.put("struture","");
        row20Map.put("object","2.2齿条轴承");
        row20Map.put("point","位置1：上压轮12点方向");
        row20Map.put("result","正常");
        row21Map.put("struture","");
        row21Map.put("object","");
        row21Map.put("point","位置2：上压轮6点方向 ");
        row21Map.put("result","正常");
        row22Map.put("struture","");
        row22Map.put("object","");
        row22Map.put("point","位置3：1#下压轮12点方向");
        row22Map.put("result","正常");
        row23Map.put("struture","");
        row23Map.put("object","");
        row23Map.put("point","位置4：1#压轮6点方向");
        row23Map.put("result","正常");
        row24Map.put("struture","");
        row24Map.put("object","");
        row24Map.put("point","位置5：2#下压轮12点方向");
        row24Map.put("result","正常");
        row25Map.put("struture","");
        row25Map.put("object","");
        row25Map.put("point","位置6：2#压轮6点方向");
        row25Map.put("result","正常");
        row26Map.put("struture","");
        row26Map.put("object","");
        row26Map.put("point","位置7：驱动轮12点方向");
        row26Map.put("result","正常");
        row27Map.put("struture","");
        row27Map.put("object","2.3变幅电机");
        row27Map.put("point","位置2：轴端 X Y  Z（振动）");
        row27Map.put("result","正常");
        row28Map.put("struture","");
        row28Map.put("object","2.4高速制动器");
        row28Map.put("point","位置1：传动轴输入X Y（振动)");
        row28Map.put("result","正常");
        row29Map.put("struture","3、回转机构");
        row29Map.put("object","3.1回转电机 X2");
        row29Map.put("point","位置2：轴端 X Y Z（振动) ");
        row29Map.put("result","正常");
        row30Map.put("struture","1、门架结构 ");
        row30Map.put("object","焊缝 ");
        row30Map.put("point","位置1：圆筒与横梁下板焊接处（海侧）X2");
        row30Map.put("result","正常");
        row31Map.put("struture","");
        row31Map.put("object","");
        row31Map.put("point","位置2：圆筒与横梁下板焊接处（陆侧）X2");
        row31Map.put("result","正常");
        row32Map.put("struture","");
        row32Map.put("object","");
        row32Map.put("point","位置3：圆筒与上板环焊缝2点钟方向 ");
        row32Map.put("result","正常");
        row33Map.put("struture","");
        row33Map.put("object","");
        row33Map.put("point","位置4：圆筒与上板环焊缝4点钟方向 ");
        row33Map.put("result","正常");
        row34Map.put("struture","");
        row34Map.put("object","");
        row34Map.put("point","位置5：圆筒与上板环焊缝6点钟方向");
        row34Map.put("result","正常");
        row35Map.put("struture","");
        row35Map.put("object","");
        row35Map.put("point","位置6：圆筒与上板环焊缝8点钟方向");
        row35Map.put("result","正常");
        row36Map.put("struture","");
        row36Map.put("object","");
        row36Map.put("point","位置7：圆筒与上板环焊缝10点钟方向");
        row36Map.put("result","正常");
        row37Map.put("struture","");
        row37Map.put("object","");
        row37Map.put("point","位置8：圆筒与上板环焊缝12点钟方向");
        row37Map.put("result","正常");
        row38Map.put("struture","");
        row38Map.put("object","");
        row38Map.put("point","位置9：横梁底端与端梁焊接处（海侧），角焊缝1");
        row38Map.put("result","正常");
        row39Map.put("struture","");
        row39Map.put("object","");
        row39Map.put("point","位置10：横梁底端与端梁焊接处（海侧），角焊缝2");
        row39Map.put("result","正常");
        row40Map.put("struture","");
        row40Map.put("object","");
        row40Map.put("point","位置11：横梁底端与端梁焊接处（海侧），角焊缝3 ");
        row40Map.put("result","正常");
        row41Map.put("struture","");
        row41Map.put("object","");
        row41Map.put("point","位置12：横梁底端与端梁焊接处（海侧），角焊缝4");
        row41Map.put("result","正常");
        row42Map.put("struture","");
        row42Map.put("object","");
        row42Map.put("point","位置13：横梁底端与端梁焊接处（陆侧），角焊缝1");
        row42Map.put("result","正常");
        row43Map.put("struture","");
        row43Map.put("object","");
        row43Map.put("point","位置14：横梁底端与端梁焊接处（陆侧），角焊缝2");
        row43Map.put("result","正常");
        row44Map.put("struture","");
        row44Map.put("object","");
        row44Map.put("point","位置15：横梁底端与端梁焊接处（陆侧），角焊缝3 ");
        row44Map.put("result","正常");
        row45Map.put("struture","");
        row45Map.put("object","");
        row45Map.put("point","位置16：横梁底端与端梁焊接处（陆侧），角焊缝4");
        row45Map.put("result","正常");
        row46Map.put("struture","2、上转柱（人字架）");
        row46Map.put("object","焊缝 ");
        row46Map.put("point","位置1：角焊缝1");
        row46Map.put("result","正常");
        row47Map.put("struture","");
        row47Map.put("object","");
        row47Map.put("point","位置2：角焊缝2");
        row47Map.put("result","正常");
        row48Map.put("struture","");
        row48Map.put("object","");
        row48Map.put("point","位置3：角焊缝3 ");
        row48Map.put("result","正常");
        row49Map.put("struture","");
        row49Map.put("object","");
        row49Map.put("point","位置4：角焊缝4");
        row49Map.put("result","正常");
        row50Map.put("struture","5、主臂架");
        row50Map.put("object","1、大臂；2、耳板铰接处；3、耳板根部");
        row50Map.put("point","位置1：大臂右支座位置轴线上侧");
        row50Map.put("result","正常");
        row51Map.put("struture","");
        row51Map.put("object","");
        row51Map.put("point","位置2：大臂左支座位置轴线下侧");
        row51Map.put("result","正常");
        row52Map.put("struture","");
        row52Map.put("object","");
        row52Map.put("point","位置3：变幅齿条与主臂架铰接处12点方向");
        row52Map.put("result","正常");
        row53Map.put("struture","");
        row53Map.put("object","");
        row53Map.put("point","位置4：耳板根部 角焊缝1");
        row53Map.put("result","正常");
        row54Map.put("struture","");
        row54Map.put("object","");
        row54Map.put("point","位置5：耳板根部 角焊缝2");
        row54Map.put("result","正常");
        row55Map.put("struture","");
        row55Map.put("object","");
        row55Map.put("point","位置6：耳板根部 角焊缝3");
        row55Map.put("result","正常");
        reportRows.add(row1Map);
        reportRows.add(row2Map);
        reportRows.add(row3Map);
        reportRows.add(row4Map);
        reportRows.add(row5Map);
        reportRows.add(row6Map);
        reportRows.add(row7Map);
        reportRows.add(row8Map);
        reportRows.add(row9Map);
        reportRows.add(row10Map);
        reportRows.add(row11Map);
        reportRows.add(row12Map);
        reportRows.add(row13Map);
        reportRows.add(row14Map);
        reportRows.add(row15Map);
        reportRows.add(row16Map);
        reportRows.add(row17Map);
        reportRows.add(row18Map);
        reportRows.add(row19Map);
        reportRows.add(row20Map);
        reportRows.add(row21Map);
        reportRows.add(row22Map);
        reportRows.add(row23Map);
        reportRows.add(row24Map);
        reportRows.add(row25Map);
        reportRows.add(row26Map);
        reportRows.add(row27Map);
        reportRows.add(row28Map);
        reportRows.add(row29Map);
        reportRows.add(row30Map);
        reportRows.add(row31Map);
        reportRows.add(row32Map);
        reportRows.add(row33Map);
        reportRows.add(row34Map);
        reportRows.add(row35Map);
        reportRows.add(row36Map);
        reportRows.add(row37Map);
        reportRows.add(row38Map);
        reportRows.add(row39Map);
        reportRows.add(row40Map);
        reportRows.add(row41Map);
        reportRows.add(row42Map);
        reportRows.add(row43Map);
        reportRows.add(row44Map);
        reportRows.add(row45Map);
        reportRows.add(row46Map);
        reportRows.add(row47Map);
        reportRows.add(row48Map);
        reportRows.add(row49Map);
        reportRows.add(row50Map);
        reportRows.add(row51Map);
        reportRows.add(row52Map);
        reportRows.add(row53Map);
        reportRows.add(row54Map);
        reportRows.add(row55Map);
        JRMapCollectionDataSource dataSource;
        dataSource=new JRMapCollectionDataSource(reportRows);
        File reportFile = new File(reportTemplate);
    /*InputStream reportStream =getServletConfig().getServletContext().getResourceAsStream("/report/RiskReportTemplate.jasper");*/

        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(reportFile.getPath());



        Map map=new HashMap();
        map.put("title","我的报表");
        OutputStream outputStream = new ByteArrayOutputStream();
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, map, dataSource);
  /*  JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile.getPath(),new HashMap(),ds);*/

        JRHtmlExporter exporter = new JRHtmlExporter();
        exporter.setParameter(
                JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN,
                Boolean.FALSE);
        exporter.setParameter(JRExporterParameter.JASPER_PRINT,
                jasperPrint);
        exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING,
                "UTF-8");
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
                outputStream);
        exporter.exportReport();
        String result =  outputStream.toString();
        System.out.println(result);
        return result;
    }
    public static String exportDeviceAbnormalCount(String reportTemplate,int day) throws JRException {    //以mysql数据库作为数据源
        String url = "jdbc:mysql://localhost:3306/inspect3";
        Connection connection=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            connection = DriverManager.getConnection(url, "root", "root");
        }catch (SQLException e){
            e.printStackTrace();
        }
        File reportFile = new File(reportTemplate);
    /*InputStream reportStream =getServletConfig().getServletContext().getResourceAsStream("/report/RiskReportTemplate.jasper");*/
        Long day1=Long.valueOf(day);
        Map parameters = new HashMap();
        parameters.put("day",day1);
        /*parameters.put("SUBREPORT_DIR",request.getServletContext().getRealPath("/report/")+"/");*/
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(reportFile.getPath());
        Map map=new HashMap();
        map.put("title","我的报表");
        OutputStream outputStream = new ByteArrayOutputStream();
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters,connection );
  /*  JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile.getPath(),new HashMap(),ds);*/

        JRHtmlExporter exporter = new JRHtmlExporter();
        exporter.setParameter(
                JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN,
                Boolean.FALSE);
        exporter.setParameter(JRExporterParameter.JASPER_PRINT,
                jasperPrint);
        exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING,
                "UTF-8");
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
                outputStream);
        //exporter.setParameter(JRHtmlExporterParameter.IMAGES_URI,"image?image=");
        exporter.exportReport();
        String result =  outputStream.toString();
        return result;
    }
    public static String exportRiskReport(String reportTemplate,String time,String l,String p) throws JRException {
        String url = "jdbc:mysql://localhost:3306/inspect3";
        Connection connection=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            connection = DriverManager.getConnection(url, "root", "root");
        }catch (SQLException e){
            e.printStackTrace();
        }
        File reportFile = new File(reportTemplate);
    /*InputStream reportStream =getServletConfig().getServletContext().getResourceAsStream("/report/RiskReportTemplate.jasper");*/
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        format.setLenient(false);
        Timestamp ts = null;
        try {
            ts = new Timestamp(format.parse(time).getTime());
        } catch (ParseException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        long t1 = Long.parseLong(l);
        Map parameters = new HashMap();
        parameters.put("stime",ts);
        parameters.put("tid", t1);
        /*parameters.put("SUBREPORT_DIR",request.getServletContext().getRealPath("/report/")+"/");*/
        parameters.put("SUBREPORT_DIR",p);
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(reportFile.getPath());
        Map map=new HashMap();
        map.put("title","我的报表");
        OutputStream outputStream = new ByteArrayOutputStream();
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters,connection );
  /*  JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile.getPath(),new HashMap(),ds);*/

        JRHtmlExporter exporter = new JRHtmlExporter();
        exporter.setParameter(
                JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN,
                Boolean.FALSE);
        exporter.setParameter(JRExporterParameter.JASPER_PRINT,
                jasperPrint);
        exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING,
                "UTF-8");
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
                outputStream);
        exporter.exportReport();
        String result =  outputStream.toString();
        return result;
    }
    public static String exportdeviceAbnormalCount(String reportTemplate, Long day) throws JRException{
        String url = "jdbc:mysql://localhost:3306/inspect3";
        Connection connection=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            connection = DriverManager.getConnection(url, "root", "root");
        }catch (SQLException e){
            e.printStackTrace();
        }
        File reportFile = new File(reportTemplate);
     /*InputStream reportStream =getServletConfig().getServletContext().getResourceAsStream("/report/RiskReportTemplate.jasper");*/
        Map parameters = new HashMap();
        parameters.put("day",day);
         /*parameters.put("SUBREPORT_DIR",request.getServletContext().getRealPath("/report/")+"/");*/
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(reportFile.getPath());
        Map map=new HashMap();
        map.put("title","我的报表");
        OutputStream outputStream = new ByteArrayOutputStream();
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters,connection );
   /*  JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile.getPath(),new HashMap(),ds);*/

        JRHtmlExporter exporter = new JRHtmlExporter();
        exporter.setParameter(
                JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN,
                Boolean.FALSE);
        exporter.setParameter(JRExporterParameter.JASPER_PRINT,
                jasperPrint);
        exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING,
                "UTF-8");
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
                outputStream);
        exporter.exportReport();
        String result =  outputStream.toString();
        return result;




    }
    public static String exportPeopleCountByDidDays(String reportTemplate,Long did,Long day) throws JRException{
        String url = "jdbc:mysql://localhost:3306/inspect3";
        Connection connection=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            connection = DriverManager.getConnection(url, "root", "root");
        }catch (SQLException e){
            e.printStackTrace();
        }
        File reportFile = new File(reportTemplate);
  /*InputStream reportStream =getServletConfig().getServletContext().getResourceAsStream("/report/RiskReportTemplate.jasper");*/
        Map parameters = new HashMap();
        parameters.put("day",day);
        parameters.put("devid",did);
      /*parameters.put("SUBREPORT_DIR",request.getServletContext().getRealPath("/report/")+"/");*/
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(reportFile.getPath());
        Map map=new HashMap();
        map.put("title","我的报表");
        OutputStream outputStream = new ByteArrayOutputStream();
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters,connection );
/*  JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile.getPath(),new HashMap(),ds);*/

        JRHtmlExporter exporter = new JRHtmlExporter();
        exporter.setParameter(
                JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN,
                Boolean.FALSE);
        exporter.setParameter(JRExporterParameter.JASPER_PRINT,
                jasperPrint);
        exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING,
                "UTF-8");
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
                outputStream);
        exporter.exportReport();
        String result =  outputStream.toString();
        return result;
    }
    public static String exportDeviceHistory(String reportTemplate,Long day) throws JRException{
        String url = "jdbc:mysql://localhost:3306/inspect3";
        Connection connection=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            connection = DriverManager.getConnection(url, "root", "root");
        }catch (SQLException e){
            e.printStackTrace();
        }
        File reportFile = new File(reportTemplate);
  /*InputStream reportStream =getServletConfig().getServletContext().getResourceAsStream("/report/RiskReportTemplate.jasper");*/
        Map parameters = new HashMap();
        parameters.put("day",day);
      /*parameters.put("SUBREPORT_DIR",request.getServletContext().getRealPath("/report/")+"/");*/

        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(reportFile.getPath());
        Map map=new HashMap();
        map.put("title","我的报表");
        OutputStream outputStream = new ByteArrayOutputStream();
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters,connection );
/*  JasperPrint jasperPrint = JasperFillManager.fillReport(reportFile.getPath(),new HashMap(),ds);*/

        JRHtmlExporter exporter = new JRHtmlExporter();
        exporter.setParameter(
                JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN,
                Boolean.FALSE);
        exporter.setParameter(JRExporterParameter.JASPER_PRINT,
                jasperPrint);
        exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING,
                "UTF-8");
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM,
                outputStream);
        exporter.exportReport();
        String result =  outputStream.toString();
        return result;
    }

}
