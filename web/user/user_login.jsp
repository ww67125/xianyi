<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reset.css"/>
<link rel="stylesheet" href="css/supersized.css"/>
<link rel="stylesheet" href="css/style.css"/>


	<link rel="stylesheet" href="user/css/reset.css">
	<link rel="stylesheet" href="user/css/supersized.css">
	<link rel="stylesheet" href="user/css/style.css">


</head>
<body>

	<div class="page-container">
		<h1>Login</h1>
		<form action="${pageContext.request.contextPath }/user/login" method="post">
			<input type="text" name="username" class="username" placeholder="Username" />
			<input type="password" name="password" class="password" placeholder="Password" />
			<button type="submit">登录</button>
			<button type="button"><a href="/user/user_register.jsp">注册</a></button>
			
			<div class="error">
				<span>+</span>
			</div>
		</form>
	</div>

	<!-- Javascript -->
	<script src="js/jquery-1.8.2.min.js"></script>
	<script src="js/supersized.3.2.7.min.js"></script>
	<script src="js/supersized-init2.js"></script>
	<script src="js/scripts.js"></script>

	<script src="user/js/jquery-1.8.2.min.js"></script>
	<script src="user/js/supersized.3.2.7.min.js"></script>
	<script src="user/js/supersized-init.js"></script>
	<script src="user/js/scripts.js"></script>



</body>
</html>