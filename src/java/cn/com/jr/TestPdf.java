package cn.com.jr;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperRunManager;

import java.io.File;
import java.util.HashMap;

/**
 * Created with IntelliJ IDEA.
 * User: ThinkPad
 * Date: 13-8-25
 * Time: 下午2:10
 * To change this template use File | Settings | File Templates.
 */
public class TestPdf {
    public static void main(String args[]){

        File reportFile=new File("web-app/report/RiskReportTemplate.jasper");
        RiskReportDataSource ds=new RiskReportDataSource();
        try{
           /* JasperRunManager.runReportToPdfFile(reportFile.getPath(), "d:\\test.pdf", new HashMap(), ds);*/
            JasperRunManager.runReportToHtmlFile(reportFile.getPath(),"d:\\test.html",new HashMap(),ds);
        }catch (JRException e){
            e.printStackTrace();
        }
    }





}
