<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 13-8-29
  Time: 上午10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="js/changeColor.js"></script>
     <style>
         #left{
             width: 385px;
             float: left;
             height: 1200px;
             border: 1px solid #999999;
             margin-top: 5px;
             overflow: auto;
         }
         #content{
         /* background-color: red;*/
          width: 930px;
          float:left;
          margin-top: 5px;
          margin-left: 5px;
             height: 1200px;
             overflow: auto;
             border: 1px solid #999999;

         }

     </style>

</head>
<body onload="blinkit()">
  <jsp:include page="nav.jsp"></jsp:include>
  <div id="left"><jsp:include page="TreeMenu.jsp"></jsp:include></div>
  <div id="content">




  </div>
</body>
</html>