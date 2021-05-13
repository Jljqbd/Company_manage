<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiugai.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body topmargin="150" leftmargin="80" ,align="center"style="background-color:#CCFFFF;">
   <li><input type="text" class="text" placeholder="员工编号"> 
   <li><input type="text" placeholder="姓名">
   <li><input type="text" placeholder="部门">
   <li><input type="text" placeholder="出生日期">
   <li><input type="text" placeholder="籍贯">
   <li><input type="text" placeholder="性别">
   <li><input type="text" placeholder="联系电话">
   <li><input type="text" placeholder="邮箱"> 
 <br>
  </body>
</html>
