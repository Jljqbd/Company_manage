<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>report</title>

    <style type="text/css">

       

        .Content-Main h1{

            display: block;

            padding: 0px 0px 10px 40px;

            margin: -5px -20px 20px -20px;

            font: 25px "Helvetica Neue", Helvetica, Arial, sans-serif;

            border-bottom: 1px solid #DADADA;

            color: red;

        }

       
		body {background-image: url(intro5.jpg);}



        .button{

            padding: 10px 25px 10px 25px;

            margin-left: 111px;

            border-radius: 4px;

            border:1px solid #CCC;

            background: #FFF;

            color: #333;

        }

        .button:hover{

            color: #333;

            background-color: #EBEBEB;

            border-color: #ADADAD;

        }

    </style>
	

</head>

<body>
<div class="Content-Main">

    <div class="Content-Main1">

        <h1><big><p align="center"><em><strong>举&nbsp报&nbsp结&nbsp果</strong></em></p></big></h1>

  </div>

    <form action="" method="post" class="form-report">

        <label> </label>
<label>

          <a><big><p align="center"><em><strong>举报成功！我们将会按照您的举报信息查明情况，同时会保护好您的个人信息！</strong></em></p></big><a>
       

        </label>
<label>

       <center> <input type="button" class="button" value="返回主界面" onclick="location.href='feedback.jsp'"> </center>

        </label>

    </form>

</div>

</body>

</html>


