<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<html>
<head>
<script language="JavaScript">
function GetData(url){
	url="dealWith.jsp?action=showMsg";//调用页面
	try{
		   DataLoad.src = url;
	}catch(e){
		return false;
	}
	var timeoutid = setTimeout("GetData()",2000);		//每隔2秒调用一次GetDate()函数
}
</script>
<script  id="DataLoad" language="JavaScript" type="text/javascript" defer ></script>
</head>
<body onLoad="GetData();"  background="../images/right.jpg">
<div align="center"> 所有人 <span id="loadContent">数据加载中……</span> </div>
</body>
</html>
