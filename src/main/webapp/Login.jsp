<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm</title>
<style type="text/css">
@import url("css/sidebar.css");

   body {
      background: gray;
   }
</style>
</head>
<body>
<p align="left" style="margin-left:300px;">
   <img src="./images/m.png" id="m" alt="메뉴줄이기" width="30" height="30">
</p>
   <p align="right" id="upp">
      <img alt="logo" src="./images/procutcut.png" height="35px" width="35px">&nbsp;&nbsp;GUEST&nbsp;&nbsp;
      <button onclick="location.href='Login.jsp'">로그인</button>&nbsp;&nbsp;
      
   </p>

	<h2 align="center">로그인</h2>
<form action="LoginPro.jsp" method="post"> 
	<table align="center" border="3" style="width: 500;">
		<tr height="40">
			<td>아이디(ID)</td>
			<td>
				<input type="text" name="id" placeholder="id 입력">
			</td>
		</tr>
		<tr height="40">
			<td>비밀번호(PW)</td>
			<td>
				<input type="password" name="passwd" placeholder="pw 입력">
			</td>
		</tr>
		<tr align="center" height="40">
			<td colspan="2">
				<input type="submit" value="로그인"/>&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소"/>
			</td>
		</tr>
	</table>
</form>


<% 

%>

   <jsp:include page="menu.jsp"></jsp:include>

   <footer>
      <jsp:include page="footer.jsp"></jsp:include>
   </footer>
</body>
</html>