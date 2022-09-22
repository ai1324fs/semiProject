<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>join</title>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<!--Stylesheet-->
<style media="screen">
@import url("css/join.css");
</style>
</head>
<body>
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>
	<form height="1200px" action="joinPro.jsp" method="post">
		<h3>Join us!</h3>

		<label for="username">아이디</label> <input type="text" placeholder="id" name="id">
		<label for="password">비밀번호</label> <input type="password" placeholder="Password" name="pw">
		<label for="password">비밀번호 확인</label> <input type="password" placeholder="Confirm Password!" name="pw1">
		<label for="name">이름</label> <input type="text" name="name">
		<table>
			<tr>
				<td>
					<label>성별</label>
				</td>
			</tr>
			<tr id=tr>
				<td width="165" align="center">
					<input type="radio" id="gender" name="gender" value="남자" style="width:15px; height:15px"/><span>남성</span>
   				</td>
   				<td width="165" align="center">
			    	<input type="radio" id="gender" name="gender" value="여자" style="width:15px; height:15px"/><span>여성</span>
    			</td>
    		</tr>
    	</table>	
		<label for="age">나이</label> <input type="text" name="age">
		<label for="genre">선호 장르 </label>
		<table align="center" id=table>
			<tr>
				<td>
					<input type="checkbox" value="코믹" name="genre" class="genre"/><span style="vertical-align:+3px">  코믹</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="멜로" name="genre" class="genre"/><span style="vertical-align:+3px">  멜로</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="액션" name="genre" class="genre"/><span style="vertical-align:+3px">  액션</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="호러" name="genre" class="genre"/><span style="vertical-align:+3px">  호러</span><br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" value="스릴러" name="genre" class="genre"/><span style="vertical-align:+3px">  스릴러</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="드라마" name="genre" class="genre"/><span style="vertical-align:+3px">  드라마</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="스포츠" name="genre" class="genre"/><span style="vertical-align:+3px">  스포츠</span>&nbsp;&nbsp;
				</td>
				<td>
					<input type="checkbox" value="SF" name="genre" class="genre"/><span style="vertical-align:+3px">  SF</span>&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="checkbox" value="ALL" checked name="genre" class="genre"/><span style="vertical-align:+3px">  모든장르</span>&nbsp;&nbsp;
				</td>
			</tr>
		</table>
		<button type="submit">가입</button>
	</form>	
</body>
</html>