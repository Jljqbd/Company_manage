<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/lts_style.css" type="text/css" rel="stylesheet">
<title>显示聊天记录</title>
<script language="JavaScript" type="text/javascript">
function GetData(url){
        url="dealWith.jsp?action=showMessage";			//调用页面
        try{
                Load.src = url;
				window.location.href="left.jsp#bottom";         	//刷新页面到底部
        }catch(e){
        	return false;
        }
        var timeoutid = setTimeout("GetData()",20000);			//每隔20秒调用一次GetData()函数
}
</script>
<script id="Load" language="JavaScript" type="text/javascript" defer></script>
</head>
<body onLoad="GetData();" bgcolor="#F0FFFF">
<span id="loadContent"><br>欢迎来到本聊天室！</span>
<a name="bottom"> </a>
</body>
</html>
