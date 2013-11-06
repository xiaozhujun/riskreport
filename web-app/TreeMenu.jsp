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
            $(".bianfu").click(function(){
                $("#content").load("bianfu.jsp");
            })
            $(".huizhuan").click(function(){
                $("#content").load("huizhuan.jsp");
            })
            $(".generatereport").click(function(){
                $("#content").load("reportHtml.jsp");
            })
            $(".zhengdong").click(function(){
                $("#content").load("main/zhengdongfenxi.html");
            });
            $(".zhengdong").trigger("click");
        });
    </script>
</head>
<body>
<ul>
    <li>健康实时预报
        <ul>
            <li>主要结构
                <ul>
                    <li class="menjiali">门架机构
                    </li>
            <li class="bijia">臂架系统
            </li>
            <li class="shangzhuanzhuli">上转柱
            </li>
            <li>平衡系统
            </li>
            <li>转台总成</li>
        </ul>
    </li>
    <li>主要机构
        <ul>
            <li class="qisheng">起升机构
            </li>
            <li class="huizhuan">回转机构
            </li>
            <li>行走机构
            </li>
            <li class="bianfu">变幅机构
            </li>
        </ul>
    </li>
</ul>
<li class="generatereport">生成报告</li>
<li class="zhengdong">减速机振动信号分析</li>
</ul>
</body>
</html>