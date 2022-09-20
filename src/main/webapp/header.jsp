<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지 헤더</title>
<style>
$('#box1').css({
 width: 1000;
 bordercolor: darkgray;
 float: left;
});
$('#box2').css({
	display: inline-block;
	text-align: center;
	float: left;
});
$('div.a').css({
 display: inline-block;
}
$('div.b').css({
 display: inline-block;
}
$('div.c').css({
 display: inline-block;
}
</style>
</head>
<body>
	<%
	String id = (String) session.getAttribute("id");

	if (id == null) {
		id = "GUEST";
	}
	%>

	<div id="box1">
		<div height="80">
			<div style="float: left; width: 33%;">
				<jsp:include page="menu.jsp"></jsp:include>
			</div>
			
			<div style="float: left; width: 33%;">
				<font size="20"><img src="./images/movie.png" alt="1'M MOVIE" width="200" height="100"/></font>
			</div>
			
			<div style="float: left; width: 33%;">
				<%=id%>님 반갑습니다.
				<% if (id.equals("GUEST")) { %>
				<br>
				<button onclick="location.href='#'">로그인</button>
				<% } else { %>
				<button onclick="location.href='#'">로그아웃</button>
				<% } %>
			</div>
			

		</div>
		<br>
<br>
		<div id="box2" >
			<span class="box1"> <font size="5"> <a
					href="#"
					style="text-decoration: none; margin-right: 40px; margin-left: 200px;">액션</a></font>
			</span> <span class="box1"> <font size="5" color="white"> <a
					href="#"
					style="text-decoration: none; margin-right: 40px; margin-left: 40px;">드라마</a></font>
			</span> <span class="box2"> <font size="5" color="white"> <a
					href="#"
					style="text-decoration: none; margin-right: 40px; margin-left: 40px;">멜로</a></font>
			</span> <span class="box3"> <font size="5" color="white"> <a
					href="#"
					style="text-decoration: none; margin-right: 40px; margin-left: 40px;">가족</a></font>
			</span> <span class="box4"> <font size="5" color="white"> <a
					href="#"
					style="text-decoration: none; margin-right: 40px; margin-left: 40px;">공포</a></font>
			</span>
		</div>

	</div>
	<br>
	<br>

</body>
</html>