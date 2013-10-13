<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/report.css">
<link rel="stylesheet" href="css/table.css">
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript">
 $(document).ready(function(){ 
	 $("#btn").click(function(){
		 $(".report").html("");
         var stime=$("#stime").val();
         var etime=$("#etime").val();
         var day=GetDateDiff(stime,etime,"day");
		  $(".report").load("showHtmlDeviceCount.jsp",{"day":day});
	 });
 });
</script>
</head>
<body>
<div id="main">
    <div class="title">
         <span class="title-font">设备异常总数</span>
    </div>
<div class="top">
起始时间:<input type="text" id="stime" class="Wdate" onClick="WdatePicker()"> 终止时间:<input type="text" id="etime" class="Wdate" onClick="WdatePicker()">
<a  id="btn">查看</a>
</div>
<div class="report">


</div>
</div>
</body>
</html>