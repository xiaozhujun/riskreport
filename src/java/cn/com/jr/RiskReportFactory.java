package cn.com.jr;

import java.util.Arrays;
import java.util.Collection;

/**
 * Created with IntelliJ IDEA.
 * User: ThinkPad
 * Date: 13-8-25
 * Time: 下午12:19
 * To change this template use File | Settings | File Templates.
 */
public class RiskReportFactory {

    private static   RiskReport[] data=
            {
                    new RiskReport("1起升机构（起升和开闭)","1.1制动器X4","位置1：行程帽1：","1、正常；2、轻微异常，需要检查；3、严重异常，需要停机大修或更换。"),
                    new RiskReport("","","位置2：行程帽2",""),
                    new RiskReport("","","位置3：行程帽3",""),
                    new RiskReport("","","位置4：行程帽4",""),
                    new RiskReport("","1.2驱动主电机X2","位置1：输出端 X Y Z   （振动）",""),
                    new RiskReport("","1.3减速机X2","位置1：高速轴外侧XYZ",""),
                    new RiskReport("","","位置2：电机地脚1内侧 Y Z",""),
                    new RiskReport("","","位置3：低速轴外侧XYZ ",""),
                    new RiskReport("","","位置4：减速机高速轴上油封",""),
                    new RiskReport("","1.4钢丝绳","位置1：卷筒支撑轴承XYZ",""),
                    new RiskReport("","","位置2：卷筒支撑轴承XYZ",""),
                    new RiskReport("","","位置3：S轮1",""),
                    new RiskReport("","","位置4：S轮2 ",""),
                    new RiskReport("","","位置5：S轮3",""),
                    new RiskReport("","","位置6：S轮4",""),
                    new RiskReport("2变幅机构","2.1减速机X1","位置1：高速轴外侧XYZ",""),
                    new RiskReport("","","位置2：地脚1",""),
                    new RiskReport("","","位置3：低速轴外侧XYZ",""),
                    new RiskReport("","","位置4：减速机油窗上侧",""),
                    new RiskReport("","2.2齿条轴承","位置1：上压轮12点方向",""),
                    new RiskReport("","","位置2：上压轮6点方向",""),
                    new RiskReport("","","位置3：1#下压轮12点方向",""),
                    new RiskReport("","","位置4：1#压轮6点方向",""),
                    new RiskReport("","","位置5：2#下压轮12点方向",""),
                    new RiskReport("","","位置6：2#压轮6点方向",""),
                    new RiskReport("","","位置7：驱动轮12点方向",""),
                    new RiskReport("","2.3变幅电机","位置2：轴端 X Y  Z（振动）",""),
                    new RiskReport("","2.4高速制动器","位置1：传动轴输入X Y（振动)",""),
                    new RiskReport("3、回转机构","3.1回转电机 X2","位置2：轴端 X Y Z（振动)",""),
                    new RiskReport("1、门架结构 ","焊缝","位置1：圆筒与横梁下板焊接处（海侧）X2",""),
                    new RiskReport("","","位置2：圆筒与横梁下板焊接处（陆侧）X2",""),
                    new RiskReport("","","位置3：圆筒与上板环焊缝2点钟方向",""),
                    new RiskReport("","","位置4：圆筒与上板环焊缝4点钟方向",""),
                    new RiskReport("","","位置5：圆筒与上板环焊缝6点钟方向",""),
                    new RiskReport("","","位置6：圆筒与上板环焊缝8点钟方向",""),
                    new RiskReport("","","位置7：圆筒与上板环焊缝10点钟方向",""),
                    new RiskReport("","","位置8：圆筒与上板环焊缝12点钟方向",""),
                    new RiskReport("","","位置9：横梁底端与端梁焊接处（海侧），角焊缝1",""),
                    new RiskReport("","","位置10：横梁底端与端梁焊接处（海侧），角焊缝2",""),
                    new RiskReport("","","位置11：横梁底端与端梁焊接处（海侧），角焊缝3",""),
                    new RiskReport("","","位置12：横梁底端与端梁焊接处（海侧），角焊缝4",""),
                    new RiskReport("","","位置13：横梁底端与端梁焊接处（陆侧），角焊缝1",""),
                    new RiskReport("","","位置14：横梁底端与端梁焊接处（陆侧），角焊缝2",""),
                    new RiskReport("","","位置15：横梁底端与端梁焊接处（陆侧），角焊缝3 ",""),
                    new RiskReport("","","位置16：横梁底端与端梁焊接处（陆侧），角焊缝4",""),
                    new RiskReport("","2、上转柱（人字架）","焊缝","位置1：角焊缝1"),
                    new RiskReport("","","位置2：角焊缝2",""),
                    new RiskReport("","","位置3：角焊缝3 ",""),
                    new RiskReport("","","位置4：角焊缝4",""),
                    new RiskReport("5、主臂架","1、大臂；2、耳板铰接处；3、耳板根部","位置1：大臂右支座位置轴线上侧",""),
                    new RiskReport("","","位置2：大臂左支座位置轴线下侧",""),
                    new RiskReport("","","位置3：变幅齿条与主臂架铰接处12点方向",""),
                    new RiskReport("","","位置4：耳板根部 角焊缝1",""),
                    new RiskReport("","","位置5：耳板根部 角焊缝2",""),
                    new RiskReport("","","位置6：耳板根部 角焊缝3",""),
            };
                public static Object[] getBeanArray(){
                    return data;
                }
          public static Collection getBeanCollection(){
             return Arrays.asList(data);
           }















































}
