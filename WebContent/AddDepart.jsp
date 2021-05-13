<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.servlet.Staff" import="java.util.List"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>添加部门</title>
    	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    	<!-- Bootstrap 3.3.5 -->
	    <link rel="stylesheet" href="<%=path %>/bootstrap/css/bootstrap.min.css">
	    <link rel="stylesheet" href="<%=path %>/plugins/datatables/dataTables.bootstrap.css">
	    <link rel="stylesheet" href="<%=path %>/dist/css/AdminLTE.min.css">
	    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<section class="content-header">
		<h1>
			<small>添加部门</small>
		</h1>
		</section>
		<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box"> 
            			<div class="box-body">
              				<table id="example1" class="table table-bordered table-striped">
              				<left leftmargin ="50">
		 						<form action ="AddPM" method="post" name="invest"  >
		 							<p>部门编号: </p>
		 							<input type="text" name="Dno" size="20" /><br /><br/>
		 							<p>部门名称:</p>
		 							<input type="text" name="Dname" size="20"/><br /><br/>
		 							<p>总经理:</p>
		 							<input type="text" name="Dgeneral" size="20" /><br /><br/>
		 							<p>副总经理:</p>
		 							<input type="text" name="Dfgeneral" size="20"/><br /><br/>
		 							<p>职员人数:</p>
		 							<input type="text" name="Dnum" size="20"/><br /><br/>
		 							<p>职责:</p>
		 							<textarea name="Dduty" rows="5" cols="40" ></textarea><br /><br/>
		 						<input type="submit" value="提交"/><br /><br/>
		 						</form>
		 					</left>
							</table>
						</div>
				</div>
			</div>
		</div>
		</section>

	</body>
</html>