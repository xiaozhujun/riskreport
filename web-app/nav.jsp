<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/head.css" type="text/css">
    <script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
    <title>武钢450吨桥式起重机健康监测与预报可视化系统</title>
    <% String path = request.getContextPath();
        String basePase = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

    <script type="text/javascript">
        $(document).ready(function(){

            var sys = decodeURI($.getUrlVar("sys"));
            if(sys != 'undefined' ){
                $('#mainBodyDiv').load($("#"+sys).attr(url));
            }else{
                $('#mainBodyDiv').load($(".mainselected").attr("url"));
            }

            $('#headTab .tabItem').click(function(){
               location = $(this).attr("url");
            });
        });
    </script>
</head>
<body>
<div id='titleContainerDiv'>
    <div id="titleDiv">武钢450吨桥式起重机健康监测与预报可视化系统<span id="devNameDiv"></span></div>
</div>

    <div id='mainHeadDiv'>
    	<div id='headTab' class='tabs'>
            <div id="safetyMonitor" class='tabItem' url="/metallurgy/main.html?sys=safetyMonitor">安全监控系统</div>
            <div id="mechannismForcast" class='tabItem' url="/metallurgy/main.html?sys=mechannismForcast">机构健康监测</div>
            <div id="structForcast" class='tabItem ' url="/metallurgy/main.html?sys=structForcast">结构健康监测</div>
            <div class='tabItem mainselected' url="/riskreport">健康诊断预报</div>
            <div class='tabItem' url="/inspect">智能点检维修</div>
            <div id="integrateManagement" class='tabItem' url="/metallurgy/main.html?sys=integrateManagement">安全技术档案</div>
		 </div>
  	</div>

</body>
</html>