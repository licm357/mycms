<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<<<<<<< HEAD
<%@ include file="base.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
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
<!--Custom-Theme-files-->
<link href="${ctx}/staticfile/homepages/css/style.css" rel='stylesheet' type='text/css' />
<script src="${ctx}/staticfile/homepages/js/jquery.min.js">
</script>
<!--/script-->
<script type="text/javascript" src="${ctx}/staticfile/homepages/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/staticfile/homepages/js/easing.js"></script>
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
			<!-- ${userName} -->
				<li><a href="toLogin" data-hover="toLogin">登录</a></li>
				<li><a href="registration" data-hover="Registration">注册</a></li>
				<!-- <li><a href="services.html" data-hover="SERVICES">SERVICES</a></li>
				<li><a href="login.html" data-hover="Login">Login</a></li>
				<li><a href="contact.html" data-hover="CONTACT">Contact</a></li> -->
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
		<div class="col-md-3 top-nav">
			<div class="logo">
				<a href="#"><h1>课程</h1></a>
			</div>
			<div class="top-menu">
				<span class="menu"> </span>
				<ul class="cl-effect-16">
					<li><a class="active" href="fore?username=${userName }" data-hover="HOME">计算机</a></li>
					<li><a href="management?username=${userName }" data-hover="management">经济管理</a></li>
					<li><a href="ability?username=${userName }" data-hover="ability">文学历史</a></li>
					<li><a href="analysis?username=${userName }" data-hover="analysis">艺术设计</a></li>
					<li><a href="training?username=${userName }" data-hover="training">心理学</a></li>
					<li><a href="task?username=${userName }" data-hover="task">外语</a></li>
					<li><a href="analysis?username=${userName }" data-hover="analysis">更多...</a></li>
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
			<!--banner-section-->
			<div class="banner-section">
				<h3 class="tittle">
					云智教育 <i class="glyphicon glyphicon-cloud"></i>
				</h3>
				<div class="banner">
					<div class="callbacks_container">
						<ul class="rslides" id="slider4">
						<c:forEach items="${imgList}" var="img" varStatus="status">
							<li><img src="${ctx}/staticfile/homepages/images/turns/${img.imgName}" class="img-responsive" alt="" />
							</li>
							</c:forEach>
						</ul>
					</div>
					<!--banner-->
					<script src="${ctx}/staticfile/homepages/js/responsiveslides.min.js"></script>
					<script>
						// You can also use "$(window).load(function() {"
						$(function() {
							// Slideshow 4
							$("#slider4")
									.responsiveSlides(
											{
												auto : true,
												pager : true,
												nav : true,
												speed : 500,
												namespace : "callbacks",
												before : function() {
													$('.events')
															.append(
																	"<li>before event fired.</li>");
												},
												after : function() {
													$('.events')
															.append(
																	"<li>after event fired.</li>");
												}
											});

						});
						
					</script>
					<div class="clearfix"></div>
					<div class="b-bottom">
						<h5 class="top">
							<a href="single.html"></a>
						</h5>
						<ul class="nav nav-pills">
							<li class="active"><a href="#">计算机</a></li>
							<li><a href="#">计算机基础</a></li>
							<li><a href="#">编程语言</a> </a></li>
							<li><a href="#">数据库与数据结构</a></li>
							<li><a href="#">计算机应用</a></li>
							<li><a href="#">软件工程</a></li>
							<li><a href="#">计算机组成</a></li>
						</ul>
					</div>
					
				</div>
				<!--//banner-->
				<!--/top-news-->
				<div class="top-news">
					<div class="top-inner">
					<c:forEach items="${courseList}" var="cl" varStatus="status">
						<c:if test="${cl.courseType==2}">
							<div class="col-md-4 top-text">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/course/pc/${cl.coursePhoto}"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">${cl.courseName}</a>
							</h5>
							<p>${cl.courseSimple}</p>
							<p>
								<i class="glyphicon glyphicon-time"></i><span style="color:#f26649">开课时间：${cl.courseNewDate } </span> <a
											href="#"><i class="glyphicon glyphicon-user"></i>${cl.courseMax } </a>
							</p>
						</div>
							</c:if>
							</c:forEach>
						<div class="clearfix"></div>
					</div>
					<div class="b-bottom">
						<h5 class="top">
							<a href="single.html"></a>
						</h5>
						<ul class="nav nav-pills">
							<li class="active"><a href="#">生物科学</a></li>
							<li><a href="#">生物</a></li>
							<li><a href="#">医学</a> </a></li>
							<li><a href="#">药学</a></li>
							<li><a href="#">健康</a></li>
							<li><a href="#">环境</a></li>
						</ul>
					</div>
					<!-- courseType=3为生物学 2-为计算机 -->
					<div class="top-inner second">
						<c:forEach items="${courseList}" var="cl" varStatus="status">
						<c:if test="${cl.courseType==3}">
							<div class="col-md-4 top-text">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/course/am/${cl.coursePhoto}"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">${cl.courseName}</a>
							</h5>
							<p>${cl.courseSimple}</p>
							<p>
								<i class="glyphicon glyphicon-time"></i><span style="color:#f26649">开课时间：${cl.courseNewDate } </span> <a
											href="#"><i class="glyphicon glyphicon-user"></i>${cl.courseMax } </a>
							</p>
						</div>
							</c:if>
							</c:forEach>
						<div class="clearfix"></div>
					</div>
					<div class="b-bottom">
						<h5 class="top">
							<a href="single.html"></a>
						</h5>
						<ul class="nav nav-pills">
							<li class="active"><a href="#">理学</a></li>
							<li><a href="#">数学</a></li>
							<li><a href="#">物理</a> </a></li>
							<li><a href="#">化学</a></li>
							<li><a href="#">天文学</a></li>
							<li><a href="#">地理科学</a></li>
							<li><a href="#">海洋科学</a></li>
						</ul>
					</div>
					<div class="top-inner second">
					<!-- courseType=4代表理学-->
						<c:forEach items="${courseList}" var="cl" varStatus="status">
						<c:if test="${cl.courseType==4}">
							<div class="col-md-4 top-text">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/course/sc/${cl.coursePhoto}"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">${cl.courseName}</a>
							</h5>
							<p>${cl.courseSimple}</p>
							<p>
								<i class="glyphicon glyphicon-time"></i><span style="color:#f26649">开课时间：${cl.courseNewDate } </span> <a
											href="#"><i class="glyphicon glyphicon-user"></i>${cl.courseMax } </a>
							</p>
						</div>
							</c:if>
							</c:forEach>
						<div class="clearfix"></div>
					</div>
				</div>
				<!--//top-news-->
			</div>
			<!--//banner-section-->
			<div class="copyrights">
				Collect from <a href="http://www.cssmoban.com/"></a>
			</div>
			<div class="banner-right-text">
				<h3 class="tittle">
					推荐 <i class="glyphicon glyphicon-heart-empty"></i>
				</h3>
				<!--/general-news-->
				<div class="general-news">
					<div class="general-inner">
						<div class="general-text">
							<input  name="courseId" type="hidden" value="${course.courseId }"></input>
							<a href="single.html?courseId=${course.courseId }" ><img src="${ctx}/staticfile/homepages/images/course/${course.coursePhoto}"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">唐诗艺术</a>
							</h5>
							<p>一起走进唐诗的审美本质和唐人的创作时态</p>
							<p>
								<span style="color:#f26649">开课时间：${course.courseNewDate } </span>
								
									
							</p>
							<p class="text-right"    >
							<span class="text-right" 
									class="glyphicon glyphicon-flag"></span>${course.academicName }
									<a
									class="span_link" href="#"><span
									class="glyphicon glyphicon-user"></span>${course.courseMax } </a><a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a>
							</p>
						</div>
						<div class="edit-pics">
						<c:forEach items="${courseList}" var="cl" varStatus="status">
						<c:if test="${cl.courseType==1}">
							<div class="editor-pics">
								<div class="col-md-3 item-pic">
									<img src="${ctx}/staticfile/homepages/images/course/${cl.coursePhoto}" class="img-responsive" width="200" height="150" >
								</div>
								<div class="col-md-9 item-details">
									<h5 class="inner two">
										<a href="single.html">${cl.courseSimple}</a>
									</h5>
									<div class="td-post-date two">
										<i class="glyphicon glyphicon-time"></i><span style="color:#f26649">开课时间：${cl.courseNewDate } </span> <a
											href="#"><i class="glyphicon glyphicon-user"></i>${cl.courseMax } </a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							</c:if>
							</c:forEach>
							<p class="text-right">更多课程...<a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
						</div>
						<div class="media">
							<h3 class="tittle media">
								探讨天地 <i class="glyphicon glyphicon-send"></i>
							</h3>
							</div>
							<c:forEach items="${chatList}" var="chat" varStatus="status">
							<div class="general-text two">
								<a href="single.html"><img src="${ctx}/staticfile/homepages/images/chat/${chat.photo}"
									class="img-responsive" alt=""></a>
								<h5 class="top">
									<a href="single.html">${chat.chatTitle }</a>
								</h5>
								<p>${chat.chatSimple }</p>
								<p>
								<span style="color:#f26649">来源：${chat.chatChief }</span>
								${chat.chatRsource }
									 <a class="span_link" href="#"><span
										class="glyphicon glyphicon-comment"></span>300 </a><a
										class="span_link" href="#"><span
										class="glyphicon glyphicon-eye-open"></span>56 </a><a
										class="span_link" href="single.html"><span
										class="glyphicon glyphicon-circle-arrow-right"></span></a>
								</p>
							</div>
							</c:forEach>
							<p class="text-right">More...<a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a></p>
					</div>
				</div>
				<!--//general-news-->
				<!--/news-->
				<!--/news-->
			</div>
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
	<a href="#home" id="toTop" class="scroll" style="display:block;">
=======
<%@ include file="../base.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
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
<!--Custom-Theme-files-->
<link href="${ctx}/staticfile/homepages/css/style.css" rel='stylesheet' type='text/css' />
<script src="${ctx}/staticfile/homepages/js/jquery.min.js">
</script>
<!--/script-->
<script type="text/javascript" src="${ctx}/staticfile/homepages/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/staticfile/homepages/js/easing.js"></script>
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
				<li><a href="registration.html" data-hover="Registration">Registration</a></li>
				<li><a href="${ctx}/WEB-INF/homepages/about.html" data-hover="About">About</a></li>
				<li><a href="services.html" data-hover="SERVICES">SERVICES</a></li>
				<li><a href="login.html" data-hover="Login">Login</a></li>
				<li><a href="contact.html" data-hover="CONTACT">Contact</a></li>
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
		<div class="col-md-3 top-nav">
			<div class="logo">
				<a href="index.html"><h1>Blogger</h1></a>
			</div>
			<div class="top-menu">
				<span class="menu"> </span>

				<ul class="cl-effect-16">
					<li><a class="active" href="index.html" data-hover="HOME">Home</a></li>
					<li><a href="about.html" data-hover="About">About</a></li>
					<li><a href="grid.html" data-hover="Grids">Grids</a></li>
					<li><a href="services.html" data-hover="Services">Services</a></li>
					<li><a href="gallery.html" data-hover="Gallery">Gallery</a></li>
					<li><a href="contact.html" data-hover="CONTACT">Contact</a></li>
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
			<!--banner-section-->
			<div class="banner-section">
				<h3 class="tittle">
					General <i class="glyphicon glyphicon-picture"></i>
				</h3>
				<div class="banner">
					<div class="callbacks_container">
						<ul class="rslides" id="slider4">
							<li><img src="${ctx}/staticfile/homepages/images/1.jpg" class="img-responsive" alt="" />

							</li>
							<li><img src="${ctx}/staticfile/homepages/images/2.jpg" class="img-responsive" alt="" />


							</li>
							<li><img src="${ctx}/staticfile/homepages/images/3.jpg" class="img-responsive" alt="" />


							</li>
							<li><img src="${ctx}/staticfile/homepages/images/3.jpg" class="img-responsive" alt="" />


							</li>
						</ul>
					</div>
					<!--banner-->
					<script src="${ctx}/staticfile/homepages/js/responsiveslides.min.js"></script>
					<script>
						// You can also use "$(window).load(function() {"
						$(function() {
							// Slideshow 4
							$("#slider4")
									.responsiveSlides(
											{
												auto : true,
												pager : true,
												nav : true,
												speed : 500,
												namespace : "callbacks",
												before : function() {
													$('.events')
															.append(
																	"<li>before event fired.</li>");
												},
												after : function() {
													$('.events')
															.append(
																	"<li>after event fired.</li>");
												}
											});

						});
					</script>
					<div class="clearfix"></div>
					<div class="b-bottom">
						<h5 class="top">
							<a href="single.html">What turn out consetetur sadipscing
								elit</a>
						</h5>
						<p>
							On Aug 25 <a class="span_link" href="#"><span
								class="glyphicon glyphicon-comment"></span>0 </a><a
								class="span_link" href="#"><span
								class="glyphicon glyphicon-eye-open"></span>56 </a><a
								class="span_link" href="single.html"><span
								class="glyphicon glyphicon-circle-arrow-right"></span></a>
						</p>
					</div>
				</div>
				<!--//banner-->
				<!--/top-news-->
				<div class="top-news">
					<div class="top-inner">
						<div class="col-md-6 top-text">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/pic1.jpg"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">Consetetur sadipscing elit</a>
							</h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor
								invidunt labore dolore magna aliquyam eratsed diam justo duo
								dolores rebum.</p>
							<p>
								On Jun 25 <a class="span_link" href="#"><span
									class="glyphicon glyphicon-comment"></span>0 </a><a
									class="span_link" href="#"><span
									class="glyphicon glyphicon-eye-open"></span>56 </a><a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a>
							</p>
						</div>
						<div class="col-md-6 top-text two">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/pic2.jpg"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">Consetetur sadipscing elit</a>
							</h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor
								invidunt labore dolore magna aliquyam eratsed diam justo duo
								dolores rebum.</p>
							<p>
								On Jun 27 <a class="span_link" href="#"><span
									class="glyphicon glyphicon-comment"></span>0 </a><a
									class="span_link" href="#"><span
									class="glyphicon glyphicon-eye-open"></span>56 </a><a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="top-inner second">
						<div class="col-md-6 top-text">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/pic3.jpg"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">Consetetur sadipscing elit</a>
							</h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor
								invidunt labore dolore magna aliquyam eratsed diam justo duo
								dolores rebum.</p>
							<p>
								On Jun 25 <a class="span_link" href="#"><span
									class="glyphicon glyphicon-comment"></span>0 </a><a
									class="span_link" href="#"><span
									class="glyphicon glyphicon-eye-open"></span>56 </a><a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a>
							</p>
						</div>
						<div class="col-md-6 top-text two">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/pic4.jpg"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">Consetetur sadipscing elit</a>
							</h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor
								invidunt labore dolore magna aliquyam eratsed diam justo duo
								dolores rebum.</p>
							<p>
								On Jun 27 <a class="span_link" href="#"><span
									class="glyphicon glyphicon-comment"></span>0 </a><a
									class="span_link" href="#"><span
									class="glyphicon glyphicon-eye-open"></span>56 </a><a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!--//top-news-->
			</div>
			<!--//banner-section-->
			<div class="copyrights">
				Collect from <a href="http://www.cssmoban.com/">网页模板</a>
			</div>
			<div class="banner-right-text">
				<h3 class="tittle">
					News <i class="glyphicon glyphicon-facetime-video"></i>
				</h3>
				<!--/general-news-->
				<div class="general-news">
					<div class="general-inner">
						<div class="general-text">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/gen1.jpg"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">Consetetur sadipscing elit</a>
							</h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor
								invidunt labore dolore magna aliquyam eratsed diam justo duo
								dolores rebum.</p>
							<p>
								On Jun 25 <a class="span_link" href="#"><span
									class="glyphicon glyphicon-comment"></span>0 </a><a
									class="span_link" href="#"><span
									class="glyphicon glyphicon-eye-open"></span>56 </a><a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a>
							</p>
						</div>
						<div class="edit-pics">
							<div class="editor-pics">
								<div class="col-md-3 item-pic">
									<img src="${ctx}/staticfile/homepages/images/f4.jpg" class="img-responsive" alt="">

								</div>
								<div class="col-md-9 item-details">
									<h5 class="inner two">
										<a href="single.html">New iPad App to simulate your Guitar</a>
									</h5>
									<div class="td-post-date two">
										<i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
											href="#"><i class="glyphicon glyphicon-comment"></i>0 </a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="editor-pics">
								<div class="col-md-3 item-pic">
									<img src="${ctx}/staticfile/homepages/images/f1.jpg" class="img-responsive" alt="">

								</div>
								<div class="col-md-9 item-details">
									<h5 class="inner two">
										<a href="single.html">New iPad App to simulate your Guitar</a>
									</h5>
									<div class="td-post-date two">
										<i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
											href="#"><i class="glyphicon glyphicon-comment"></i>0 </a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="editor-pics">
								<div class="col-md-3 item-pic">
									<img src="${ctx}/staticfile/homepages/images/f1.jpg" class="img-responsive" alt="">

								</div>
								<div class="col-md-9 item-details">
									<h5 class="inner two">
										<a href="single.html">New iPad App to simulate your Guitar</a>
									</h5>
									<div class="td-post-date two">
										<i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
											href="#"><i class="glyphicon glyphicon-comment"></i>0 </a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="editor-pics">
								<div class="col-md-3 item-pic">
									<img src="${ctx}/staticfile/homepages/images/f4.jpg" class="img-responsive" alt="">

								</div>
								<div class="col-md-9 item-details">
									<h5 class="inner two">
										<a href="single.html">New iPad App to simulate your Guitar</a>
									</h5>
									<div class="td-post-date two">
										<i class="glyphicon glyphicon-time"></i>Feb 22, 2015 <a
											href="#"><i class="glyphicon glyphicon-comment"></i>0 </a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="media">
							<h3 class="tittle media">
								Media <i class="glyphicon glyphicon-floppy-disk"></i>
							</h3>
							<div class="general-text two">
								<a href="single.html"><img src="${ctx}/staticfile/homepages/images/gen3.jpg"
									class="img-responsive" alt=""></a>
								<h5 class="top">
									<a href="single.html">Consetetur sadipscing elit</a>
								</h5>
								<p>Consetetur sadipscing elitr, sed diam nonumy eirmod
									tempor invidunt labore dolore magna aliquyam eratsed diam justo
									duo dolores rebum.</p>
								<p>
									On Jun 27 <a class="span_link" href="#"><span
										class="glyphicon glyphicon-comment"></span>0 </a><a
										class="span_link" href="#"><span
										class="glyphicon glyphicon-eye-open"></span>56 </a><a
										class="span_link" href="single.html"><span
										class="glyphicon glyphicon-circle-arrow-right"></span></a>
								</p>
							</div>
						</div>
						<div class="general-text two">
							<a href="single.html"><img src="${ctx}/staticfile/homepages/images/gen2.jpg"
								class="img-responsive" alt=""></a>
							<h5 class="top">
								<a href="single.html">Consetetur sadipscing elit</a>
							</h5>
							<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor
								invidunt labore dolore magna aliquyam eratsed diam justo duo
								dolores rebum.</p>
							<p>
								On Jun 27 <a class="span_link" href="#"><span
									class="glyphicon glyphicon-comment"></span>0 </a><a
									class="span_link" href="#"><span
									class="glyphicon glyphicon-eye-open"></span>56 </a><a
									class="span_link" href="single.html"><span
									class="glyphicon glyphicon-circle-arrow-right"></span></a>
							</p>
						</div>
					</div>
				</div>
				<!--//general-news-->
				<!--/news-->
				<!--/news-->
			</div>
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
					Copyright &copy; 2016.Company name All rights reserved.More
					Templates <a href="http://www.cssmoban.com/" target="_blank"
						title="模板之家">模板之家</a> - Collect from <a
						href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
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
>>>>>>> branch 'master' of https://github.com/licm357/mycms.git
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>


</body>
</html>