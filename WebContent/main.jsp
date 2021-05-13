<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.servlet.Staff" import="java.util.Date" import="java.text.SimpleDateFormat"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<title>企业信息管理系统</title>
		<link rel="stylesheet" href="<%=path %>/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=path %>/css/da">
		<link rel="stylesheet" href="<%=path %>/dist/css/AdminLTE.min.css">
		<link rel="stylesheet" href="<%=path %>/dist/css/skins/_all-skins.min.css">
		<link rel="stylesheet" href="<%=path %>/plugins/datepicker/datepicker3.css">
		<!-- ./wrapper -->
		<script src="<%=path %>/plugins/jQuery/jQuery-2.1.4.min.js"></script>
		<script src="<%=path %>/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=path %>/dist/js/app.min.js"></script>
		<script src="<%=path %>/dist/js/demo.js"></script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<header class="main-header">
				<!-- Logo -->
				<a href="main.jsp" class="logo"> <span class="logo-mini"><b>企业信息管理系统</b></span>
					<span class="logo-lg"><b>企业</b>信息管理系统</span>
				</a>
				<!-- 头部导航开始 -->
				<nav class="navbar navbar-static-top" role="navigation">
					<!-- 切换导航 -->
					<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
						role="button"><span class="sr-only"></span></a>
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
	
							<!-- 帐号信息开始 -->
							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
									<img src="<%=path %>/dist/img/user2-160x160.jpg" class="user-image" alt="User Image" /> 
									<%Staff sta = (Staff)session.getAttribute("sta");  %>
									<span class="hidden-xs"><%=sta.getSname() %></span>
								</a>
								<ul class="dropdown-menu">
									<li class="user-header">
										<img src="<%=path %>/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
										<p>
											<%Date date = new Date(); 
												SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");%>
											<%=sta.getSname() %>- <%=sta.getDname() %> <small>本次登录时间:<%=formatter.format(date) %></small>
										</p></li>
									<li class="user-footer">
										<div class="pull-left">
											<a href="ZhangHao.jsp" class="btn btn-default btn-flat">帐号设置</a>
										</div>
										<div class="pull-right">
											<a href="index.jsp" class="btn btn-default btn-flat">退出</a>
										</div>
									</li>
								</ul></li>
							<!-- 帐号信息结束 -->
	
							<!-- 右侧控制栏切换按钮 -->
							<li>
								<a href="#" data-toggle="control-sidebar">
									<i class="fa fa-gears"></i>
								</a>
							</li>
						</ul>
					</div>
				</nav>
				<!-- 头部导航结束 -->
			</header>
			
			<aside class="main-sidebar">
				<!-- 左侧菜单导航开始 -->
				<section class="sidebar">
	
					<!-- 用户状态信息 -->
					<div class="user-panel">
						<div class="pull-left image">
							<img src="<%=path %>/dist/img/user2-160x160.jpg" class="img-circle"
								alt="User Image">
						</div>
						<div class="pull-left info">
							<p><%=sta.getSname() %></p>
						</div>
					</div>
					<!-- 用户状态信息结束 -->
	
					<!-- 左侧菜单开始 -->
					<ul class="sidebar-menu">
						<!-- 员工信息管理 -->
						<li class="treeview">
							<a href="SM?id=1" target="yinruwenj">
								<i class="fa fa-th"></i>
								<span>员工信息管理</span> <i class="fa fa-angle-left pull-right"></i>
							</a>
						</li>
						<!-- 员工信息管理结束 -->
	
						<!-- 部门信息管理 -->
						<li class="treeview">
							<a href="PM" target="yinruwenj">
							 	<i class="fa fa-files-o"></i>
							 	<span>部门信息管理</span>
							</a>
						</li>
						<!-- 部门信息管理结束 -->
	
						<!-- 员工职位管理 -->
						<li class="treeview">
							<a href="SM?id=2" target="yinruwenj"> 
								<i class="fa fa-files-o"></i>
								<span>员工职位管理</span>
							</a>
						</li>
						<!-- 员工职位管理结束 -->
						
						<!-- 内部聊天室 -->
						<li class="treeview">
						<%Staff st = (Staff)request.getSession().getAttribute("sta"); %>
							<a href="lts/dealWith.jsp?action=login&username=<%=st.getDname() %>--<%=st.getSpost() %>--<%=st.getSname()%>" target="yinruwenj"> 
								<i class="fa fa-files-o"></i>
								<span>内部聊天室</span>
							</a>
						</li>
						<!-- 内部聊天室 结束-->
						<!-- 内部举报系统 -->
						<li class="treeview">
							<a href="feedback.jsp" target="yinruwenj"> 
								<i class="fa fa-files-o"></i>
								<span>内部举报系统</span>
							</a>
						</li>
						<!-- 内部举报系统结束-->
					</ul>
					<!-- 左侧菜单结束 -->
				</section>
				<!-- 左侧菜单导航结束 -->
			</aside>
			<!-- 主页内容 -->
		<div class="content-wrapper" style="height: 100%;">
			<iframe id="yinruwenj" src="FirstPage.jsp" name="yinruwenj"
			style="width: 100%; height: 1600px;" scrolling="no"></iframe>
		</div>
		<!-- 底部信息 -->
		<footer class="main-footer" style="margin-top: -5px;">
			<div class="pull-right hidden-xs">
				<b>Version</b> 999
			</div>
			<strong>Copyright &copy; 2019-2020
			</strong> 
		</footer>
		</div>
	</body>
</html>