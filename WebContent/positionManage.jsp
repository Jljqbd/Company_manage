<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="com.servlet.Staff" import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>员工职位管理</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- rel:规定当前文档与被链接文档之间的关系 -->
<!-- href:规定被链接文档的位置 -->
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<!-- =================================================================== -->
	<section class="content-header">
	<!-- section 标签定义文档中的节（section、区段）。比如章节、页眉、页脚或文档中的其他部分。 -->
		<h1>
		<!--h1一级标题 -->
			<small>职位查询</small>
			<!-- small 标签呈现小号字体效果 -->
		</h1>
		<ol class="breadcrumb">
		<!-- ol 标签定义有序列表。 -->
			<li><a href="yhgl/indexs.html"><i class="fa fa-dashboard"></i>主页</a></li>
			<!-- li 标签定义列表项目。 -->
			<!-- i 标签显示斜体文本效果 -->
			<li class="active">职位管理</li>
		</ol>
	</section>
	<!-- 主体内容 -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
			<!-- div 可定义文档中的分区或节（division/section）。 -->
				<!-- 会员信息表单 -->
				<div class="box">
					<div class="box-body">
						<div></div>
						<!-- /.box-body -->
						<table id="example1" class="table table-bordered table-striped">
							<div class="row">
								<div class="col-sm-12">
									<div>
										<a href="#" class="btn btn-sm btn-primary" data-toggle="modal"
											data-target="#userLogin">添加职位</a>
									</div>
								</div>
							</div>
							<thead>
							<!-- thead 标签定义表格的表头。该标签用于组合 HTML 表格的表头内容。 -->
								<tr>
								<% List<Staff> SL = (List)request.getAttribute("SL"); 
	                  					Staff sta = null;%>
								<!-- tr 标签定义 HTML 表格中的行。 -->
									<th>职位</th>
									<th>姓名</th>
									<th>性别</th>
									<th>任职年数</th>
									<th>联系电话</th>
									<th>地址</th>
									<!-- 定义表格内的表头单元格。 -->
								</tr>
							</thead>
							<tbody>
								<%for(int i = 0; i < SL.size(); i++){ %>
								<%sta = SL.get(i);%>
								<tr>
									<td><%=sta.getSpost() %></td>
									<td><%=sta.getSname() %></td>
									<td><%=sta.getSsex() %></td>
									<td><%=sta.getSwy() %></td>
									<td><%=sta.getSphone() %></td>
									<td><%=sta.getSPlace() %></td>
									<td>
										<a href="" class="btn btn-xs btn-info" data-toggle="modal"
											data-target="#userEdit">修改</a>
										<a href="" class="btn btn-xs btn-danger" data-toggle="modal"
											data-target="#userExit">删除</a>

									</td>
									
									<!-- td 标签定义 HTML 表格中的标准单元格。 -->
								</tr>
								<%} %>			
							</tbody>
						</table>
						<!-- 会员信息表 -->

						<div></div>
						<!-- /.box-body -->

					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

				
				<!-- 后期做完搜索删掉  -->
				<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
				<!-- src规定外部脚本文件的 URL。 -->
				<!-- Bootstrap 3.3.5 -->
				<script src="bootstrap/js/bootstrap.min.js"></script>
				<!-- 后期做完分页删掉  -->
				<script src="plugins/datatables/jquery.dataTables.min.js"></script>
				<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
				<script
					src="plugins/datatables/extensions/TableTools/js/dataTables.tableTools.js"></script>
				<script
					src="plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
				<!-- page script -->
				<script>
					/*$('#myModal').modal().css({
						width: 'auto',
						'margin-button': function () {
					   return -($(this).width() / 2);
					}
					});*/

					$(document)
							.ready(
									function() {
										$('#example1')
												.dataTable(
														{
															"paging" : true,
															"lengthChange" : false,
															"searching" : true,
															"ordering" : false,
															"info" : true,
															"autoWidth" : false,
															"aLengthMenu" : [
																	[ 8, 25,
																			50,
																			-1 ],
																	[ 8, 25,
																			50,
																			"All" ] ],

															"oLanguage" : {
																"sLengthMenu" : "每页显示 _MENU_ 条记录",
																"sZeroRecords" : "抱歉， 没有找到",
																"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
																"sInfoEmpty" : "没有数据",
																"sSearch" : "搜索:",
																"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
																"oPaginate" : {
																	"sPrevious" : "前一页",
																	"sNext" : "后一页"
																},
															}
														});
									});
				</script>
		<!-- 员工增加模态框（Modal） -->
				<div class="modal fade" id="userLogin" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-m">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title text-center" id="myModalLabel">添加职位</h4>
							</div>
							<div class="modal-body">
								<form>
									<div class="box box-widget">
										<div class="box-body">
											<div class="input-group">
												<span class="input-group-addon">职位</span> <input
													type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">姓名</span> <input
													type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">性别</span> <input
													type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">任职年数</span>
												<input type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">联系电话</span>
												<input type="text" class="form-control" name="accountId">
											</div>
											<br>
											<div class="input-group">
												<span class="input-group-addon">地址</span>
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
						<h4 class="modal-title text-center" id="myModalLabel">职位信息编辑</h4>
					</div>
					<div class="modal-body">
						<div class="box box-widget">
							<div class="box-body">
								<div class="input-group">
									<span class="input-group-addon">职位&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="UNAS-276">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">姓名&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="贪吃飒">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">性别&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="2014-01-22">
								</div>								<br />
								<div class="input-group">
									<span class="input-group-addon">任职年数&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="天津">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">联系电话&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
									<input type="text" class="form-control" name="accountId"
										value="男">
								</div>
								<br />
								<div class="input-group">
									<span class="input-group-addon">地址</span> <input
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
				
</body>
</html>