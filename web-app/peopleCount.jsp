<%@ page import="com.csei.db.insertDB" %>
<%@ page import="java.util.List" %>
<%@ page import="com.csei.db.dbModel" %>
<%@ page import="java.util.Iterator" %>
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
         var stime=$("#stime").val();
         var etime=$("#etime").val();
         var day=GetDateDiff(stime,etime,"day");
		 var did=$("#did").val();
		 if(did==""){
		 $(".report").load("showHtmlPeopleCount.jsp",{"day":day});
		 }else{
		 $(".report").load("showHtmlPCount.jsp",{"day":day,"did":did});
		 }
		 var s=$("#s").val();
		 switch(s.charAt(0)){
		 case "p":
			 location.href="peoplePie.jsp?day="+day+"&devid="+did;
			 break;
		 case "z":
			 location.href="peopleZhu.jsp?day="+day+"&devid="+did;
			 break;
		 }
	 });
 });
</script>
</head>
<body>
<div id="main">
    <div class="title">
        <span class="title-font">人员点检异常总数</span>
    </div>
<div class="top">
设备编号:
<select id="did">
    <option value="">-----请选择------</option>
<%
    insertDB d=new insertDB();
    List<dbModel> l=d.getDevice();
    Iterator it=l.iterator();
    while(it.hasNext()){
        dbModel t=(dbModel)it.next();
        %>
         <option value="<%=t.getDid()%>"><%=t.getDevname()%></option>
    <%
    }
%>
</select> 起始时间:<input type="text" id="stime" class="Wdate" onClick="WdatePicker()"> 终止时间:<input type="text" id="etime" class="Wdate" onClick="WdatePicker()">
<a  id="btn">查看</a>
</div>
<div class="report">


</div>
    </div>
</body>
</html>