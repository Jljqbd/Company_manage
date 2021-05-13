<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ZhangHao.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body topmargin="150" leftmargin="80" >
<h2 align="center">个人信息表</h2>
<table style="border: 3px;margin: 20 auto;background: snow" width="50%" cellpadding="10" cellspacing="5" >
    <tr>
        <td >员工编号:</td>
        <td colspan="5"><input type="text" style="width: 70%; "  value="sc00001"></td>
    </tr>
    <tr>
        <td >姓名:</td>
        <td colspan="5"><input type="text" style="width: 70%; " value="William"></td>
    </tr>
    <tr>
        <td >所在部门:</td>
        <td colspan="5"><input type="text" style="width: 70%; " value="marketing department " ></td>
    </tr>
    <tr>
        <td >年龄:</td>
        <td colspan="5"><input type="text" style="width: 70%; " value="22"></td>
    </tr>
    <tr>
        <td >联系电话:</td>
        <td colspan="5"><input type="text" style="width: 70%; " value="7463825109"></td>
    </tr>
       <tr>
        <td colspan="4" align="right">
			<a href="xiugai.jsp" class="btn btn-xs btn-info" data-toggle="modal" data-target="#userEdit">修改</a>
			<a href="/main.jsp" class="btn btn-xs btn-info" data-toggle="modal" data-target="#userEdit">返回</a>

         
        </td>
 
    </tr>
</table>
</body>
</html>
