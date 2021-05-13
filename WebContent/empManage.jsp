<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.servlet.Staff" import="java.util.List"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>员工信息管理</title>
    	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    	<!-- Bootstrap 3.3.5 -->
	    <link rel="stylesheet" href="<%=path %>/bootstrap/css/bootstrap.min.css">
	    <link rel="stylesheet" href="<%=path %>/plugins/datatables/dataTables.bootstrap.css">
	    <link rel="stylesheet" href="<%=path %>/dist/css/AdminLTE.min.css">
	    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<section class="content-header">
      		<h1><small>员工信息管理</small></h1>
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
              								<a href="" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#userLogin">添加员工</a> 
              							</div>
            						</div>
          						</div>
	          					<!-- /.row --> 
	                			<thead>
	                  				<tr>
	                  					<% List<Staff> SL = (List)request.getAttribute("SL"); 
	                  					Staff sta = null;%>
					                    <th>员工编号</th>
					                    <th>姓名</th>
					                    <th>出生日期</th>
					                    <th>籍贯</th>
					                    <th>性别</th>
					                    <th>联系电话</th>
					                    <th>操作</th>
	                  				</tr>
	                			</thead>
	                			<tbody>
			                  		<%for(int i = 0; i < SL.size(); i++){ %>
			                  		<% sta = SL.get(i);%>
			                  		<tr>
			                    		<td><%=sta.getSno() %></td>
					                    <td><%=sta.getSname() %></td>
					                    <td><%=sta.getSage() %></td>
					                    <td><%=sta.getSPlace() %></td>
					                    <td><%=sta.getSsex() %></td>
					                    <td><%=sta.getSphone() %></td>	                    
					                    <td>
											<a href="" class="btn btn-xs btn-info" data-toggle="modal" data-target="#userEdit">修改</a>
											<a href="" class="btn btn-xs btn-danger" data-toggle="modal" data-target="#userExit">删除</a>
										</td>
			                  		</tr>
			                  		<% }%> 
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
								<form action="ADDstaff" method="post">
									<div class="box box-widget">
										<div class="box-body">
											<div class="input-group">
												<span class="input-group-addon">员工编号</span> <input
													type="text" class="form-control" name="Sno">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon"> 姓   名 </span> <input
													type="text" class="form-control" name="Sname">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">年龄</span> <input
													type="text" class="form-control" name="Sage">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon"> 籍    贯 </span>
												<input type="text" class="form-control" name="Splace">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon"> 性    别 </span>
												<input type="text" class="form-control" name="Ssex">
											</div>
											<br>											<br>
											<div class="input-group">
												<span class="input-group-addon">联系电话</span>
												<input type="text" class="form-control" name="Sphone">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">密码</span>
												<input type="text" class="form-control" name="Spassword">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">从属部门</span>
												<input type="text" class="form-control" name="Dname">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">职位</span>
												<input type="text" class="form-control" name="Spost">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">任职年份</span>
												<input type="text" class="form-control" name="Swy">
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
							data-target="#modal-2">增加</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- 卡号增加模态框结束（Modal） -->
		</form>
		
		<!-- 修改模态框（Modal） -->
		<div class="modal fade" id="userEdit" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-m">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title text-center" id="myModalLabel">员工信息编辑</h4>
					</div>
					<div class="modal-body">
						<div class="box box-widget">
							<div class="box-body">
								<div class="input-group">
									<span class="input-group-addon">员工编号&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="<%=sta.getSno() %>">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon"> 姓   名 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="<%=sta.getSname() %>">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">年龄&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="<%=sta.getSage() %>">
								</div>								<br />
								<div class="input-group">
									<span class="input-group-addon"> 籍    贯 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="<%=sta.getSPlace() %>">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon"> 性    别 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="<%=sta.getSsex() %>">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">联系电话</span> <input
										type="text" class="form-control" name="accountId"
										value="<%=sta.getSphone() %>">
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
	</body>
</html>