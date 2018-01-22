<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="base.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Company Login</title>
<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
	href="${ctx}/staticfile/login/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${ctx}/staticfile/login/css/form-elements.css">
<link rel="stylesheet" href="${ctx}/staticfile/login/css/style.css">
<link rel="shortcut icon"
	href="${ctx}/staticfile/login/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${ctx}/staticfile/login/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${ctx}/staticfile/login/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${ctx}/staticfile/login/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong>Company</strong> Login
						</h1>
						<div class="description">
							<p>
								This is a free state to resource,Welcome to my home
								<!-- Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>,
								customize and use it as you like! -->
							</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>Login to our site</h3>
								<p>Enter your username and password to log on:</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="form-bottom">
						${errorInfo}
							<form role="form" action="${ctx}/login.action" method="post" class="login-form">
								<div class="form-group">
									<label class="sr-only" for="form-username">Username</label> <input
										type="text" name="username" placeholder="用户名..."
										class="form-username form-control" id="userName" v-model="item.userName">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label> <input
										type="password" name="password" placeholder="密码..."
										class="form-password form-control" id="passWord" v-model="item.passWord">
								</div>
								<button type="submit" class="btn"  v-on:click="login">登录</button>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 social-login">
						<p>...或者通过以下方式进行注册:</p>
						<div class="social-login-buttons">
							<a class="btn btn-link-2" href="#"> <i class="fa fa-facebook"></i>
								Facebook
							</a> <a class="btn btn-link-2" href="#"> <i class="fa fa-twitter"></i>
								Twitter
							</a> <a class="btn btn-link-2" href="#"> <i
								class="fa fa-google-plus"></i> Google Plus
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Javascript -->
	<script src="${ctx}/staticfile/login/js/jquery-1.11.1.min.js"></script>
	<script src="${ctx}/staticfile/login/js/jquery.backstretch.min.js"></script>
	<script src="${ctx}/staticfile/login/js/login.js"></script>
</body>
</html>