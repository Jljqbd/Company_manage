<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>管理员登录</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/style.css" rel='stylesheet' type='text/css' />
	</head>
	
	<body>
		<!--User-Login-->
		<h1>企业信息管理系统</h1>
		<div class="avtar">
			<img src="dist/img/login/avtar.png" />
		</div>
		<div class="login-form">
			<p></p>
			<form action="Dologin1" method="post">
				<div class="form-text">
	
					<input type="text" class="text" placeholder="账户" name="username" /> 
					<input type="password" placeholder="密码" name="password" />
				</div>
				<input type="submit" value="登录">
			</form>
		</div>
	</body>
</html>