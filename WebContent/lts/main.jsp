<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工聊天室</title>
</head>
<%
//response.setHeader("refresh" , "5" );
 %>
<frameset rows="*" cols="1*,1024,1*" framespacing="0" frameborder="no" border="0">
<frame src="blank.htm" name="BLFrame" scrolling="no" noresize="noresize">
<frameset rows="*" cols="*,182" framespacing="0" frameborder="no" border="0">
  <frameset rows="*,95" cols="*" framespacing="0" frameborder="no" border="0">
  <frameset rows="103,*" cols="*" framespacing="0" frameborder="no" border="0">
    <frame src="left_top.jsp" name="leftTopFrame">
	<frame src="left.jsp" name="mainFrame">
	</frameset>
    <frame src="down.jsp" name="bottomFrame" scrolling="NO" noresize>
  </frameset>
  <frame src="right.jsp" name="rightFrame" scrolling="NO" noresize></frameset>
 <frame src="blank.htm" name="BLFrame" scrolling="no" noresize="noresize">
 </frameset> 
<noframes>
<body>
</html>
