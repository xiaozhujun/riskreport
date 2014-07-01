<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="content-type" content="text/html" />
    <meta name="author" content="ThinkPad" />
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <title>Tree</title>
    <script src="js/jquery-1.4.2.js"></script>
    <script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="js/DateDiff.js"></script>
    <!--引入zhengdongfenxi页面  !-->
    <link rel="stylesheet" type="text/css" href="main/css/base.css">
    <link rel="stylesheet" type="text/css" href="main/css/jquery-ui-1.10.3.custom.css">
    <link rel="stylesheet" type="text/css" href="main/css/layout.css">
    <link rel="stylesheet" type="text/css" href="main/css/title.css">
    <link rel="stylesheet" type="text/css" href="main/css/info.css">
    <link rel="stylesheet" type="text/css" href="main/css/infotable.css">
    <link rel="stylesheet" type="text/css" href="main/css/simpleTree.css">
    <link rel="stylesheet" type="text/css" href="main/css/imgpop.css">
    <script type="text/javascript" src='main/js/jquery-1.7.2.min.js'></script>
    <script type="text/javascript" src='main/js/globalVar.js'></script>
    <script type="text/javascript" src="main/js/jquery-ui-1.10.3.custom.js"></script>
    <script type="text/javascript" src="main/js/simpleTree.js"></script>
    <script type="text/javascript" src="main/js/getParam.js"></script>
    <script type="text/javascript" src="main/js/dynamicProfile.js"></script>
    <script type="text/javascript" src="main/js/rgraph/libraries/RGraph.common.core.js" ></script>
    <script type="text/javascript" src="main/js/rgraph/libraries/RGraph.common.effects.js" ></script>
    <script type="text/javascript" src="main/js/rgraph/libraries/RGraph.line.js" ></script>
    <script type="text/javascript" src="main/js/imgPop.js"></script>
    <script>
        $(function(){
            $.ajaxSetup ({
                cache: false //关闭AJAX相应的缓存
            });
            $('li:has(ul)').click(function(event){
                if(this==event.target){
                    if($(this).children().is(':hidden')){
                        $(this).css('list-style-image','url(images/minus.gif)').children().show();
                    }else{
                        $(this).css('list-style-image','url(images/plus.gif)').children().hide();
                    }
                }
                return false;
            }).css('cursor','pointer').click();
            $('li:not(:has(ul))').css({cursor:'pointer','list-style-image':'none'});

            /* 跳转功能*/
            $(".menjiali").click(function(event){
                      $("#content").load("menjia.jsp");
                      event.stopPropagation();
                    });
            $(".menjia1").click(function(event){
                event.stopPropagation();
            })
            $(".shangzhuanzhuli").click(function(){
                $("#content").load("shangzhuanzhu.jsp");
            })
            $(".bijia").click(function(){
                $("#content").load("bijia.jsp");
            })
            $(".qisheng").click(function(){
                $("#content").load("qisheng.jsp");
            })
            $(".qiaojia").click(function(){
                $("#content").load("qiaojia.jsp");
            })
            $(".bianfu").click(function(){
                $("#content").load("bianfu.jsp");
            })
            $(".huizhuan").click(function(){
                $("#content").load("huizhuan.jsp");
            })
            <!--
            $(".generatereport").click(function(){
                $("#content").load("reportHtml.jsp");
            })
            -->
            $(".reportList").click(function(){
                $("#content").load("reportList.jsp");
            })
            $(".zhengdong").click(function(){
                $("#content").load("main/zhengdongfenxi.html");
            });
            $(".qiaojia").trigger("click");
            $(".qisheng").trigger("click");
        });
    </script>
</head>
<body>
<ul>
    <li id="qishengReport" class="qisheng">机构健康预报
        <ul>
            <li>减速机高速轴外侧X向振动监测</li>
            <li>减速机高速轴外侧Y向振动监测</li>
        </ul>
    </li>
    <li id="qiaojiaReport"class="qiaojia">结构健康预报
        <ul>
            <li>刚性支腿纵上应力监测</li>
            <li>刚性支腿纵下应力监测</li>
            <li>东梁上盖板0/4处应力监测</li>
            <li>东梁上盖板温补处应力监测</li>
            <li>西梁上盖板1/4处应力监测</li>
            <li>西梁上盖板2/4处应力监测</li>
        </ul>
    </li>
<li class="reportList">健康诊断报告</li>
</ul>
</body>
</html>