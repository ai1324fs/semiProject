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

.mainJoinForm {
	margin-top: 120px;
}


*, *:before, *:after {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
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

form {
	height: 1100px;
	width: 400px;
	background-color: rgba(255, 255, 255, 0.13);
	position: absolute;
	transform: translate(-50%, -50%);
	top: 50%;
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
	height: 110px;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.07);
	border-radius: 3px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 12px;
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
<body>
<script>
document.querySelector('.mainJoinForm').addEventListener('click', function(e){
    //ID??? 7?????? ???????????? ????????? ??????
    if(document.querySelector('.peopleID').value.length < 7){
        rating.showMessage('????????? ?????? ????????????');
        return false;
        alert("???????????? ?????? 5?????? ?????? ???????????????")
    }
    //??? ??????
});
</script>
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>
	<form height="1200px" action="joinPro.jsp" method="post" class="mainJoinForm">
		<h3>Join us!</h3>

		<label for="username">?????????</label> <input type="text" placeholder="id" name="id" minlength = "5"  class="peopleID">
		<label for="password">????????????</label> <input type="password" placeholder="Password" name="pw">
		<label for="password">???????????? ??????</label> <input type="password" placeholder="Confirm Password!" name="pw1">
		<label for="name">??????</label> <input type="text" name="name">
		<table>
			<tr>
				<td>
					<label>??????</label>
				</td>
			</tr>
			<tr id=tr>
				<td width="165" align="center">
					<input type="radio" id="gender" name="gender" value="??????" checked="checked" style="width:15px; height:15px"/><span>??????</span>
   				</td>
   				<td width="165" align="center">
			    	<input type="radio" id="gender" name="gender" value="??????" style="width:15px; height:15px"/><span>??????</span>
    			</td>
    		</tr>
    	</table>	
		<label for="age">??????</label> <input type="text" name="age">
		<label for="genre">?????? ?????? </label>
		<table align="center" id=table>
			<tr>
				<td>
					<input type="checkbox" value="?????????" name="genre" class="genre"/><span style="vertical-align:+3px; font-size: 12px">  ?????????</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="??????" name="genre" class="genre"/><span style="vertical-align:+3px">  ??????</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="??????" name="genre" class="genre"/><span style="vertical-align:+3px">  ??????</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="??????" name="genre" class="genre"/><span style="vertical-align:+3px">  ??????</span><br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" value="?????????" name="genre" class="genre"/><span style="vertical-align:+3px; ">  ?????????</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="?????????" name="genre" class="genre"/><span style="vertical-align:+3px">  ?????????</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="???????????????" name="genre" class="genre"/><span style="vertical-align:+3px">  ???????????????</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="SF" name="genre" class="genre"/><span style="vertical-align:+3px">  SF</span>&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="checkbox" value="ALL" checked name="genre" class="genre"/><span style="vertical-align:+3px">  ????????????</span>&nbsp;&nbsp;
				</td>
			</tr>
		</table>
		<button type="submit">??????</button>
	</form>	
</body>
</html>