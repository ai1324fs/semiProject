<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>joinForm</title>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<!--Stylesheet-->
<style media="screen">
*, *:before, *:after {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body.movieJoin {
	background-color: #080710;
}

.background {
	width: 430px;
	height: 520px;
	position: absolute;
	transform: translate(-50%, -50%);
	left: 50%;
	top: 50%;
}

.background .shape {
	height: 200px;
	width: 200px;
	position: absolute;
	border-radius: 50%;
}

.shape:first-child {
	background: linear-gradient(#1845ad, #23a2f6);
	left: -80px;
	top: -80px;
}

.shape:last-child {
	background: linear-gradient(to right, #ff512f, #f09819);
	right: -30px;
	bottom: -80px;
}
/* form์ ๋ํ css */
form {
	/* height: 1100px; */
	width: 400px;
	background-color: rgba(255, 255, 255, 0.13);
	position: absolute;
	transform: translate(-50%, -50%);
	top: 105%;
	left: 50%;
	border-radius: 10px;
	backdrop-filter: blur(10px);
	border: 2px solid rgba(255, 255, 255, 0.1);
	box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
	padding: 50px 35px;
}

form * {
	font-family: 'Poppins', sans-serif;
	color: #ffffff;
	letter-spacing: 0.5px;
	outline: none;
	border: none;
}

form h3 {
	font-size: 32px;
	font-weight: 500;
	line-height: 42px;
	text-align: center;
}

label {
	display: block;
	margin-top: 30px;
	font-size: 16px;
	font-weight: 500;
}

input {
	display: block;
	height: 50px;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.07);
	border-radius: 3px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 14px;
	font-weight: 300;
}
textarea {
	display: block;
	/* height: 50px; */
	width: 100%;
	background-color: rgba(255, 255, 255, 0.07);
	border-radius: 3px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 14px;
	font-weight: 300;
}
#tr {
	display: block;
	height: 50px;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.07);
	border-radius: 3px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 14px;
	font-weight: 300;
}
#table {
	display: block;
	height: 80px;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.07);
	border-radius: 3px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 14px;
	font-weight: 300;
}

::placeholder {
	color: #e5e5e5;
}

button {
	margin-top: 50px;
	width: 100%;
	background-color: #ffffff;
	color: #080710;
	padding: 15px 0;
	font-size: 18px;
	font-weight: 600;
	border-radius: 5px;
	cursor: pointer;
}

.social {
	margin-top: 30px;
	display: flex;
}

.social div {
	background: red;
	width: 150px;
	border-radius: 3px;
	padding: 5px 10px 10px 5px;
	background-color: rgba(255, 255, 255, 0.27);
	color: #eaf0fb;
	text-align: center;
}

.social div:hover {
	background-color: rgba(255, 255, 255, 0.47);
}

.social .fb {
	margin-left: 25px;
}

.social i {
	margin-right: 4px;
}

.genre{
	display:inline-block;
	width:20px;
	height:20px;
}
#checkbox{
	vertical-align: -3px;
}

</style>
</head>
<body class=movieJoin>
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>
	<form action="movieJoinPro.jsp" method="post">
		<h3>Join us!</h3>

		<label>CODE</label> <input type="text" placeholder="์ํ์ฝ๋" name="mno">
		<label>์?๋ชฉ</label> <input type="text" placeholder="์ํ์?๋ชฉ" name="title">
		<label>์ฅ๋ฅด</label>
		<table align="center" id=table>
			<tr>
				<td>
					<input type="checkbox" value="์ฝ๋ฏน" name="genre" class="genre"/><span style="vertical-align:+3px">  ์ฝ๋ฏน</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="๋ฉ๋ก" name="genre" class="genre"/><span style="vertical-align:+3px">  ๋ฉ๋ก</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="์ก์" name="genre" class="genre"/><span style="vertical-align:+3px">  ์ก์</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="ํธ๋ฌ" name="genre" class="genre"/><span style="vertical-align:+3px">  ํธ๋ฌ</span><br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" value="์ค๋ฆด๋ฌ" name="genre" class="genre"/><span style="vertical-align:+3px">  ์ค๋ฆด๋ฌ</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="๋๋ผ๋ง" name="genre" class="genre"/><span style="vertical-align:+3px">  ๋๋ผ๋ง</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="์คํฌ์ธ?" name="genre" class="genre"/><span style="vertical-align:+3px">  ์คํฌ์ธ?</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="SF" name="genre" class="genre"/><span style="vertical-align:+3px">  SF</span>&nbsp;&nbsp;
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					<label>๊ตญ๋ด/์ธ</label>
				</td>
			</tr>
			<tr id=tr>
				<td width="165" align="center">
					<input type="radio" id="country" name="country" value="๊ตญ๋ด" style="width:15px; height:15px"/><span>๊ตญ๋ด</span>
   				</td>
   				<td width="165" align="center">
			    	<input type="radio" id="country" name="country" value="๊ตญ์ธ" style="width:15px; height:15px"/><span>๊ตญ์ธ</span>
    			</td>
    		</tr>
    	</table>
		<label>๋ฐํ์</label> <input type="text" placeholder="OO๋ถ" name="runtime">
		<label>์์ฒญ์ฐ๋?น</label> <input type="text" name="age">
		<label>๊ฐ๋ด์ผ</label> <input type="text" name="opendate">
		<label>๊ฐ๋</label> <input type="text" name="director">
		<label>์ถ์ฐ์ง</label> <input type="text" name="actor">
		<label>์ํ์๊ฐ</label> <textarea rows="10" cols="90" name="story"></textarea>
		<label>ํฌ์คํฐ</label> <input type="text" value="./movieDB/(์ด๊ณณ์ ํ์ผ.ํ์ฅ์์๋?ฅ)" name="poster">
		<label>ํ์?</label> <input type="text" name="love">
		<button type="submit">๋ฐ์ดํฐ ์ฝ์</button>
	</form>	
</body>
</html>