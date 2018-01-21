<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 设置css和js引用的模板，因为如果倒是每个页面都引用的话，会很复杂，到时直接在要用的页面开始加入<%-- <%@ include file="base.jsp"%> --%>即可 -->
<!-- 获取虚拟路径 -->
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%-- <script language="javascript" src="${ctx}/staticfile/js/vue.js"></script> --%>
<script language="javascript" src="${ctx}/staticfile/js/vue.min.js"></script>
<!-- boootstarpcss引用框架的模板 -->
 <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap-theme.css" media="all"/>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap-theme.css.map" media="all"/>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap-theme.min.css" media="all"/>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap-theme.min.css.map" media="all"/>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap.css" media="all"/>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap.css.map" media="all"/>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap.min.css" media="all"/>
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/css/bootstrap.min.css.map" media="all"/>
<!-- bootstrap和vuejs引用的模板 -->
<script language="javascript" src="${ctx}/staticfile/js/bootstrap.js"></script>
<script language="javascript" src="${ctx}/staticfile/js/bootstrap.min.js"></script>
<script language="javascript" src="${ctx}/staticfile/js/vue.js"></script>
<!-- 前台首页特有的 -->
<link href="${ctx}/staticfile/homepages/css/style.css" rel='stylesheet' type='text/css' />	
<script src="${ctx}/staticfile/homepages/js/jquery.min.js"> </script>
<script type="text/javascript" src="${ctx}/staticfile/homepages/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/staticfile/homepages/js/easing.js"></script>

 