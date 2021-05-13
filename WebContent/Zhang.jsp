<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.servlet.Depart" import="java.util.List"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>部门信息管理</title>
		<meta
			content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
			name="viewport">
		<!-- Bootstrap 3.3.5 -->
		<link rel="stylesheet"
			href="<%=path%>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet"
			href="<%=path%>/plugins/datatables/dataTables.bootstrap.css">
		<link rel="stylesheet" href="<%=path%>/dist/css/AdminLTE.min.css">
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script
			src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<section class="content-header">
		<h1>
			<small>部门信息管理</small>
		</h1>
		</section>

		<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<table style="border: 2px;margin: 10 auto;background: snow" width="50%" cellpadding="5" cellspacing="0" >
    <tr>
        <td style="background: Indigo">员工编号:</td>
        <td colspan="5"><input type="text" style="width: 60%; "  value="sc00001"></td>
    </tr>
    <tr>
        <td style="background: Indigo">姓名:</td>
        <td colspan="3"><input type="text" style="width: 60%; " value="William"></td>
    </tr>
    <tr>
        <td style="background: Indigo">所在部门:</td>
        <td colspan="3"><input type="text" style="width: 60%; " value="marketing department " ></td>
    </tr>
    <tr>
        <td style="background: Indigo">年龄:</td>
        <td colspan="3"><input type="text" style="width: 60%; " value="22"></td>
    </tr>
    <tr>
        <td style="background: Indigo">联系电话:</td>
        <td colspan="3"><input type="text" style="width: 60%; " value="7463825109"></td>
    </tr>
       <tr>
        <td colspan="4" align="right">
			<a href="xiugai.jsp" class="btn btn-xs btn-info" data-toggle="modal" data-target="#userEdit">修改</a>
			<a href="/main.jsp" class="btn btn-xs btn-info" data-toggle="modal" data-target="#userEdit">返回</a>

         
        </td>
 
    </tr>
</table>

			</div>
		</div>
		</section>

</body>
</html>