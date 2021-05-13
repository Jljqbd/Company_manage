<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/lts_style.css" type="text/css" rel="stylesheet">
<title>发表信息</title>
</head>
<script language="javascript">
function check(form1){
	if (form1.content.value==""){alert("请输入内容！");return false;}
}
</script>
<body background="../images/down.jpg">
<br>
<form name="form1" method="post" action="dealWith.jsp?action=sendMessage" onSubmit="return check(form1)">
  <table width="702" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr >
      <td width="101" align="right"><%=session.getAttribute("username") %>说：&nbsp;</td>
      <td width="434" height="100"><input name="content" type="text" size="70">
      </td>
      <td width="167"><input name="Submit" type="submit" class="btn_grey" value="发送">
        &nbsp;
        <input name="Submit2" type="button" class="btn_grey" onClick="parent.location.href='dealWith.jsp?action=loginOut';" value="退出聊天室">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
