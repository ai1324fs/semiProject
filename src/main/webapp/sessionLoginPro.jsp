<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="people" class="semiProject.peopleDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session login process</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = "";
String pw = "";

	/*String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
	
	session.setMaxInactiveInterval(60*60*24*365);
	
	response.sendRedirect("main.jsp");*/
		if(request.getParameter("id") != null){
			id = request.getParameter("id");
		}
		if(request.getParameter("pw") != null){
			pw = request.getParameter("pw");
		}
		if(people.loginRegister(id, pw)){
			session.setAttribute("id", "pw");
%>
<script>
alert("로그인 되었습니다.");
location.href="main.jsp";
</script>
<% }else{ %>
<script>
alert("로그인을 실패하였습니다.");
location.href="sessionLogin.jsp"
</script>
<%} %>
</body>
</html>