<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="movie.reviewDAO"%>
<%@ page import="movie.reviewBean"%>
<%	request.setCharacterEncoding("UTF-8");%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 쓰기(저장)</title>
</head>
<body>
<jsp:useBean id="reBean" class="movie.reviewBean">
<jsp:setProperty name="reBean" property="*"/></jsp:useBean>
<script>
$("input:checkbox[name=]")
</script>


<%
	request.setCharacterEncoding("UTF-8");
	reviewDAO redao = new reviewDAO();
	redao.insertreview(reBean);
	
	String s_grade = request.getParameter("grade");
    int grade = Integer.parseInt(s_grade);
	
	response.sendRedirect("main.jsp");
	
%>

</body>
</html>