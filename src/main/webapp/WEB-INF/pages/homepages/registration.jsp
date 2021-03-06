<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="base.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Blogger Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android  Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 900);
		});
	});
</script>

</head>
<body>
	<!-- header-section-starts -->
	<div class="h-top" id="home">
		<div class="top-header">
			<ul class="cl-effect-16 top-nag">
				<li><a href="registration?username=${userName }" data-hover="Registration">欢迎您：${userName}</a></li>
				<li><a href="logout.html" data-hover="logout">注销</a></li>
			</ul>
			<div class="search-box">
				<div class="b-search">
					<form>
						<input type="text" value="Search" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Search';}">
						<input type="submit" value="">
					</form>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<div class="full">
		<div class="col-md-3 top-nav register">
			<div class="logo">
				<a href="index.html"><h1>Blogger</h1></a>
			</div>
			<div class="top-menu">
				<span class="menu"> </span>
				<ul class="cl-effect-16">
					<li><a class="active" href="fore?username=${userName }" data-hover="HOME">首页</a></li>
					<li><a href="management?username=${userName }" data-hover="management">课程管理</a></li>
					<li><a href="training?username=${userName }" data-hover="training">综合实训</a></li>
					<li><a href="task?username=${userName }" data-hover="task">任务管理</a></li>
					<li><a href="ability?username=${userName }" data-hover="ability">能力档案</a></li>
					<li><a href="analysis?username=${userName }" data-hover="analysis">数据分析</a></li>
				</ul>
				<!-- script-for-nav -->
				<script>
					$("span.menu").click(function() {
						$(".top-menu ul").slideToggle(300, function() {
							// Animation complete.
						});
					});
				</script>
				<!-- script-for-nav -->
				<ul class="side-icons">
					<li><a class="fb" href="#"></a></li>
					<li><a class="twitt" href="#"></a></li>
					<li><a class="goog" href="#"></a></li>
					<li><a class="drib" href="#"></a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-9 main">
			<!-- register -->
			<div class="sign-up-form">
				<h3 class="tittle">
					个人信息修改 <i class="glyphicon glyphicon-file"></i>
				</h3>
				<p>Having hands on experience in creating innovative designs,I
					do offer design solutions which harness</p>
				<div class="sign-up">
					<h3 class="tittle reg">
						个人信息详情 <i class="glyphicon glyphicon-user"></i>
					</h3>
					<div class="sign-u">
						<div class="sign-up1">
							<h4 class="b">昵称* :</h4>
						</div>
						<div class="sign-up2">
							<form>
								<input type="text" class="text" value="请输入你要修改的昵称"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '请输入你要修改的昵称';}">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="sign-u">
						<div class="sign-up1">
							<h4 class="c">邮箱 * :</h4>
						</div>
						<div class="sign-up2">
							<form>
								<input type="text" class="text" value="请输入您要修改的邮箱"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '请输入您要修改的邮箱';}">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
					<h3 class="tittle reg">
						Login Information <i class="glyphicon glyphicon-off"></i>
					</h3>
					<div class="sign-u">
						<div class="sign-up1">
							<h4 class="d">密码* :</h4>
						</div>
						<div class="sign-up2">
							<form>
								<input type="password" class="Password" value="请输入您要修改的秘密"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '请输入您要修改的秘密';}">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="sign-u">
						<div class="sign-up1">
							<h4>再次确认密码* :</h4>
						</div>
						<div class="sign-up2">
							<form>
								<input type="password" class="Password" value="再次确认您的密码"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '再次确认您的密码';}">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
					<form>
						<input type="submit" value="Submit">
					</form>
				</div>
			</div>
			<!-- //register -->
			<!-- //login-page -->
			<div class="clearfix"></div>
			<!--/footer-->
			<div class="footer">
				<div class="footer-top">
					<div class="col-md-4 footer-grid">
						<h4>Lorem sadipscing</h4>
						<ul class="bottom">
							<li>Consetetur sadipscing elitr</li>
							<li>Magna aliquyam eratsed diam</li>
						</ul>
					</div>
					<div class="col-md-4 footer-grid">
						<h4>Message Us Now</h4>
						<ul class="bottom">
							<li><i class="glyphicon glyphicon-home"></i>Available 24/7</li>
							<li><i class="glyphicon glyphicon-envelope"></i><a
								href="mailto:info@example.com">mail@example.com</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grid">
						<h4>Address Location</h4>
						<ul class="bottom">
							<li><i class="glyphicon glyphicon-map-marker"></i>2901
								Glassgow Road, WA 98122-1090</li>
							<li><i class="glyphicon glyphicon-earphone"></i>phone: (888)
								123-456-7899</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="copy">
				<p>
					Copyright &copy; 2018.Campus name All rights reserved.More
					Information <a href="http://www.beyond.com/" target="_blank"
						title="Beyond">Beyond</a> 
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--//footer-->
	<!--start-smooth-scrolling-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>


</body>
</html>