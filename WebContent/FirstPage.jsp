<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FirstPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path %>/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=path %>/plugins/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet" href="<%=path %>/dist/css/AdminLTE.min.css">
	<%-- <link rel="stylesheet" href="<%=path %>/plugins/jQuery/jQuery-2.1.4.min.js"> --%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		function clickTest(){
			alert("点击成功！");
			/* window.document.location.href="111.html"; */
		}
		
		function jump(){
	        window.location.href="test2.jsp";
	    }

		</script> 


  </head>
  
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" target="_blank" href="https://wannianrili.51240.com/">查看日历</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="">
                            <a href="http://www.the5fire.net/about" target="_blank">关于the5fire</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <header class="jumbotron subhead" id="overview">
            <h1>企业信息管理系统首页</h1>
                <!-- <div class="input-group input-group-lg">
			        <input type="text" class="form-control">
			        <span class="input-group-btn">
			         <button class='btn btn-success' type="button">search</button>
			        </span>
    			</div><br> -->
            <p class="lead">欢迎访问</p>
            <div class="subnav">
                <ul class="nav nav-pills">
                    <li><a href="test.jsp">首页</a></li>
                    <li><a href="test.jsp">技术</a></li>
                    <li><a href="test.jsp">资讯</a></li>
                    <li><a href="test.jsp">联系</a></li>
                    <li><a href="test.jsp">服务</a></li>
                    <li><a href="test.jsp">关于</a></li>
                </ul>
            </div>
            </header>

            <!-- <section id="typography"> -->
            <div class="page-header">
                <h1>NEW <small>企业相关信息</small></h1>
            </div>

        
        <div class="container-fluid">
        
         <div class="col-md-10">
      <a href="test2.jsp"><button class="btn btn-default">产品1</button></a>
      <a href="test2.jsp"><button class="btn btn-primary">产品2</button></a>
      <a href="test2.jsp"><button class="btn btn-success">产品3</button></a>
      <a href="test2.jsp"><button class="btn btn-info">产品4</button></a>
      <a href="test2.jsp"><button class="btn btn-warning">产品5</button></a>
     <a href="test2.jsp"><button class="btn btn-danger">产品6</button></a>
 
 
      <!-- <div class="row">
		<br> -->
        <!-- 第一个面板 -->
        <div class="col-md-6"> 
          <div class="panel panel-primary">
        <div class="panel-heading">最新消息</div>
        <div class="panel-body">
          <div class="alert alert-success"><a href="javascript:clickTest()">已通过</a></div>
          <div class="alert alert-danger"><a href="javascript:clickTest()">审核中</a></div>
          <div class="alert alert-warning"><a href="javascript:clickTest()">未通过</a></div>        
        </div>
          </div>
        </div>
        <!-- 第一个面板结束 -->
       
        <!-- 第二个面板 -->
        <div class="col-md-6"> 
          <div class="panel panel-primary">
            <div class="panel-heading">我的信息</div>
            <div class="panel-body">
          <div class="alert alert-info"><a href="javascript:clickTest()">订单消息</a><span class="badge pull-right">33</span></div>
          <div class="alert alert-info"><a href="javascript:clickTest()">评论消息</a><span class="badge pull-right">44</span></div>
          <div class="alert alert-info"><a href="javascript:clickTest()">任务消息</a><span class="badge pull-right">55</span></div>        
            </div>
          </div>
        </div>
        <!-- 第二个面板结束 -->
   

        <!-- 第三个面板 -->
     <div class="col-md-6"> 
          <div class="panel panel-primary">
        <div class="panel-heading">企业评价</div>
        <div class="panel-body">
          <div class="alert alert-success"><a href="javascript:clickTest()">优秀</a></div>
          <div class="alert alert-danger"><a href="javascript:clickTest()">良好</a></div>
          <div class="alert alert-warning"><a href="javascript:clickTest()">较差</a></div>        
        </div>
          </div>
        </div>
        <!-- 第三个面板结束 -->

        <!-- 第四个面板 -->
        <div class="col-md-6"> 
        <div class="panel panel-primary">
        <div class="panel-heading">工作进度</div>
        <div class="panel-body">     
          <p><span class="label label-primary">项目开发</span></p>
          <div class="progress">
            	<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
					<span style="white-space:pre"></span>    
					<span class="sr-only">60% Complete</span>
					<span style="white-space:pre"></span>
				</div>
          </div>
          <p><span class="label label-danger">销售进度</span></p>
          <div class="progress">
            	<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
					<span style="white-space:pre"></span>
					<span class="sr-only">80% Complete</span>
					<span style="white-space:pre"></span>
				</div>
				
				
          </div>
        </div>

          </div>
        </div>
        <!-- 第四个面板结束 -->
 
    </div>
     </div>
     
     </div>
     
        

       <div class="container">
            <footer class="footer">
            <p class="pull-right"><a href="#">返回顶部</a></p>
            <p>热线电话：8888-8888</p>
            <p>人工客服： <a href="http://www.4399.com">点击呼叫</a>.</p>
            <p><a class="btn btn-success btn-lg" href="https://www.baidu.com">了解更多</a></p>
            </footer>
        </div>
    </body>
</html>
