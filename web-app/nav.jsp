<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/head.css" type="text/css">
    <script type="text/javascript" src='js/jquery-1.7.2.min.js'></script>
    <title>标题</title>
    <% String path = request.getContextPath();
        String basePase = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
</head>
<body>
<div id='titleContainerDiv'>
    <div id="titleDiv">港口起重机械健康监测与预报可视化系统<span id="devNameDiv"></span></div>
</div>
<div id='mainHeadDiv'>
    <div id='headTab' class='tabs'>
        <div class='tabItem' url="integrateManagement.html">港机信息可视化</div>
        <div class='tabItem' onclick="location.href='/riskreport/'">港机智能点检</div>
        <div class='tabItem' onclick="location.href='/lubricate/'">港机润滑管理</div>
        <div class='tabItem ' onclick="location.href='main.html?devName=门机#01'">机构健康监测</div>
        <div class='tabItem ' onclick="location.href='main.html?devName=门机#01'">结构健康监测</div>
        <div class='tabItem' onclick="location.href='main.html?devName=门机#01'">电气健康监测</div>
        <div class='tabItem mainselected' url="health-forecast.html">健康趋势预报</div>
        <div class='tabItem' url="risk-management.html">动态风险评估</div>
    </div>
<<<<<<< HEAD
    <div id='mainHeadDiv'>
    	<div id='headTab' class='tabs'>
		    <div class='tabItem' url="integrateManagement.html">港机信息可视化</div>  
		    <div class='tabItem' onclick="location.href='/riskreport/'">港机智能点检</div>
		    <div class='tabItem' url="mechanismForcast/health-forecast.html">机构健康监测</div>
		    <div class='tabItem ' url="structForcast/health-forecast.html">结构健康监测</div>
		    <div class='tabItem' url="electricalForcast/health-forecast.html">电气健康监测</div>
		    <div class='tabItem mainselected' url="health-forecast.html">健康趋势预报</div>
		    <div class='tabItem' url="risk-management.html">动态风险评估</div>
		 </div>
  	</div>
=======
</div>
>>>>>>> 1183c71adfa48dfcb5f6b7ca04358f2a771f0c3b
</body>
</html>