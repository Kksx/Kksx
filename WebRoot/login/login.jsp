<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="cn.util.Const"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>在线学习系统</title>
<link href="<%=Const.LOGROOT%>css/style.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
         #footer{color: white}
		input[type="button"]{
			float: right;
			color: #fff;
			cursor: pointer;
			font-weight: 900;
			outline: none;
			font-family: 'Raleway', sans-serif;
			padding: 12px 0px;
			width: 35%;
			font-size: 18px;
			background:#6C496F;
			border:2px solid #6C496F;
			border-radius: 0.5em;
			-webkit-border-radius:0.5em;
			-moz-border-radius:0.5em;
			-o-border-radius:0.5em;
		}
		input[type="button"]:hover{
			background: #fff;
			color:#6C496F;
			border:2px solid #6C496F;
		}
	</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- -->
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="<%=Const.LOGROOT%>js/jquery.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});
});
</script>
<script>function jump(){window.location.href="<%=Const.ROOT%>/register.jsp";}</script>
</head>
<body>
<!-- contact-form -->
<div class="message warning">
<div class="inset">
	<div class="login-head">
		<h1>在线学习系统</h1>
	</div>
		<form action="<%=Const.ROOT%>user/login" method="post"  enctype="multipart/form-data">
			<li>
				<input type="text" class="text" name="username" placeholder="请输入用户名" value="${username}"><a  class=" icon user"></a>
			</li>
				<div class="clear"> </div>
			<li>
				<input type="password" name="password" placeholder="请输入密码"> <a  class="icon lock"></a>
			</li>
			<div class="clear" style="color: #F00">${wrong }</div>
			<div class="clear" style="color: #00aeff">${success }</div>

			<div class="submit">
				<input type="submit" onclick="myFunction()" value="登录" >
				<input type="button" value="注册" onclick=javascrtpt:jump() />
				<h4><a href="#"></a></h4>
				<div class="clear">  </div>
			</div>

		</form>
		</div>
	</div>
	<div class="clear"> </div>
	<!--- footer --->
	<p id="footer" align="center">@山东交通学院</p>
</div>
</div>


</body>
</html>