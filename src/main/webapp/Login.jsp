<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>sessionLoginForm</title>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<!--Stylesheet-->
<style media="screen">
@import url("css/Login.css");
</style>
</head>
<body>
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>
	<form action="LoginPro.jsp" method="post">
		<h3>로그인</h3>

		<label for="username">아이디</label> <input type="text" placeholder="id" name="id"> 
		<label for="password">패스워드</label> <input type="password" placeholder="Password" name="pw">

		<button>Log In</button>
		<div class="social">
			<div class="go">
				<i class="fab fa-google"></i> Google
			</div>
			<div class="fb">
				<i class="fab fa-facebook"></i> Facebook
			</div>
		</div>
	</form>
</body>
</html>