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
                   // alert("menjia") ;
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
            $(".deviceCount").click(function(){
                $("#content").load("deviceCount.jsp");
            })
            $(".peopleCount").click(function(){
                $("#content").load("peopleCount.jsp");
            })
            $(".deviceInfo").click(function(){
                $("#content").load("deviceInfo.jsp");
            })
            $(".peopleInfo").click(function(){
                $("#content").load("peopleInfo.jsp");
            })
            $(".history").click(function(){
                $("#content").load("deviceHistory.jsp");
            })
        });
    </script>
    <style>
        body{
            font-size: 20px;
            margin: 0px;
        }
        ul li{
            list-style: none;
        }
        li{
            list-style-image: url('images/plus.gif');
        }
        #treemenu{

            width: 385px;

        }

    </style>
</head>

<body>
<ul>
    <li>健康实时预报
        <ul>
            <li>主要结构
                <ul>
                    <li class="menjiali">门架机构
                        <ul>
                            <li class="menjia1">圆筒</li>
                            <li class="menjia1">横梁</li>
                            <li class="menjia1">端梁</li>
                        </ul>
                    </li>


            <li class="bijia">臂架系统
                <ul>
                    <li>象鼻梁</li>
                    <li>大拉杆</li>
                    <li>臂架</li>
                </ul>

            </li>
            <li class="shangzhuanzhuli">上转柱
                <ul>
                    <li>立柱上段</li>
                    <li>立柱下段</li>
                </ul>

            </li>
            <li>平衡系统
                <ul>
                    <li>平衡梁</li>
                    <li>小拉杆</li>
                </ul>


            </li>
            <li>转台总成</li>
        </ul>
    </li>
    <li>主要机构
        <ul>
            <li class="qisheng">起升机构
                <ul>
                    <li>驱动装置
                        <ul>
                            <li>电动机</li>
                            <li>制动器</li>
                            <li>减速器</li>
                            <li>高速轴联轴器</li>
                        </ul>
                    </li>
                    <li>钢丝绳卷绕系统
                        <ul>
                            <li>卷筒总成</li>
                            <li>钢丝绳</li>
                            <li>滑轮</li>
                        </ul>
                    </li>
                    <li>取物装置
                        <ul >
                            <li>吊钩总成</li>
                            <li>抓斗</li>
                        </ul>


                    </li>
                </ul>
            </li>
            <li class="huizhuan">回转机构
                <ul>
                    <li>支承装置</li>
                    <li>驱动装置
                        <ul>
                            <li>电动机</li>
                            <li>制动器</li>
                            <li>减速器</li>
                        </ul>
                    </li>
                    <li>安全保护装置
                        <ul>
                            <li>回转锚定装置</li>
                        </ul>
                    </li>
                </ul>




            </li>
            <li>行走机构
                <ul>
                    <li>支承装置
                        <ul>
                            <li>八轮均衡梁</li>
                            <li>四轮均衡梁</li>
                            <li>车轮组
                                <ul>
                                    <li>驱动车架</li>
                                    <li>从动车架</li>
                                    <li>驱动轮装配</li>
                                    <li>从动轮装配</li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>驱动装置


                    </li>
                    <li>安全保护装置
                        <ul>
                            <li>锚定装置</li>
                            <li>电动防跑器</li>
                            <li>缓冲器</li>
                        </ul>
                    </li>
                    <li>防风系缆</li>
                </ul>

            </li>
            <li class="bianfu">变幅机构
                <ul>
                    <li>驱动装置
                        <ul>
                            <li>电动机</li>
                            <li>减速器</li>
                            <li>摇架装配</li>
                            <li>齿条总成</li>
                        </ul>

                    </li>

                </ul>

            </li>
        </ul>
    </li>
</ul>
<li class="generatereport">生成报告</li>
<li class="deviceCount">设备异常总数</li>
<li class="deviceInfo">设备异常明细</li>
<li class="peopleCount">人员点检异常总数</li>
<li class="peopleInfo">人员点检异常明细</li>
<li class="history">设备异常趋势分析</li>
</ul>
</body>
</html>