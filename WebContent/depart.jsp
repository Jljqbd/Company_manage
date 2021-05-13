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
				<!-- 会员信息表单 -->
				<div class="box">
					<div class="box-body">
						<table id="example1" class="table table-bordered table-striped">
							<div class="row">
								<div class="col-sm-12">
									<div>
										<a href="AddDepart.jsp" class="btn btn-sm btn-primary" >添加部门</a>
									</div>
								</div>
							</div>
							<!-- /.row -->
							<thead>
								<tr>
									<th>
										部门编号
									</th>
									<th>
										部门名称
									</th>
									<th>
										总经理
									</th>
									<th>
										副总经理
									</th>
									<th>
										职员人数
									</th>
									<th>
										职责
									</th>
									<th>
										操作
									</th>
								</tr>
							</thead>
							<tbody>
								<% List<Depart> DM = (List)request.getAttribute("DM"); 
	                  					Depart dm = null;%>
	                  			<%for(int i = 0; i < DM.size(); i++){ %>
								<%dm = DM.get(i); %>
								<tr>
									<td><%=dm.getDno() %></td>
									<td><%=dm.getDname() %></td>
									<td><%=dm.getDgeneral() %></td>
									<td><%=dm.getDfgeneral() %></td>
									<td><%=dm.getDnum() %></td>
									<td><%=dm.getDduty() %></td>
									<td>
										<a href="" class="btn btn-xs btn-info" data-toggle="modal"
											data-target="#userEdit">修改</a>
										<a href="" class="btn btn-xs btn-danger" data-toggle="modal"
											data-target="#userExit">删除</a>

									</td>
								</tr>
								<%} %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		</section>

		<!-- 员工增加模态框（Modal） -->
				<div class="modal fade" id="userLogin" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-m">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title text-center" id="myModalLabel">添加员工</h4>
							</div>
							<div class="modal-body">
								<form>
									<div class="box box-widget">
										<div class="box-body">
											<div class="input-group">
												<span class="input-group-addon">部门编号</span> <input
													type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">部门名称</span> <input
													type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">总经理</span> <input
													type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">副总经理</span>
												<input type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">职员人数</span>
												<input type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">职责</span>
												<input type="text" class="form-control" name="accountId">
											</div>
								</form>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->

					</div>
					<!--/.modal-body -->

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="submit" class="btn btn-primary" data-toggle="modal"
							data-target="#modal-2">增加</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- 卡号增加模态框结束（Modal） -->
		
		<!-- 修改模态框（Modal） -->
		<div class="modal fade" id="userEdit" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-m">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title text-center" id="myModalLabel">部门信息编辑</h4>
					</div>
					<div class="modal-body">
						<div class="box box-widget">
							<div class="box-body">
								<div class="input-group">
									<span class="input-group-addon">部门编号&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="UNAS-276">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">部门名称&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="贪吃飒">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">总经理&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="2014-01-22">
								</div>	
								<br />
								<div class="input-group">
									<span class="input-group-addon">副总经理&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="天津">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">职员人数&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="男">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">职责</span> <input
										type="text" class="form-control" name="accountId"
										value="8888-8888">
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->

					</div>
					<!--/.modal-body -->

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="submit" class="btn btn-primary" data-toggle="modal"
							data-target="#modal-2">保存</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- 修改模态框结束（Modal） -->

		<!-- 删除模态框（Modal） -->
		<div class="modal fade" id="userExit" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-m">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title text-center text-danger text-bold"
							id="myModalLabel">银行卡删除</h4>
					</div>
					<div class="modal-body">
						<div class="box-body">
							<p>
								请确认你是否要删除该员工的信息?
							</p>
							<p class="text-danger">确认后该员工将不存在。</p>
						</div>
						<!-- /.box-body -->

					</div>
					<!--/.modal-body -->

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="submit" class="btn btn-danger" data-toggle="modal"
							data-target="#modal-2">确定</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- 删除模态框结束（Modal） -->

		</div>
		<!-- /.row --> 
	</body>
</html>