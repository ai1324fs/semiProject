<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="movie.peopleDAO" %>  
<%@ page import="movie.peopleBean" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리 구현</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String genre[] = request.getParameterValues("genre");
	String textgenre  = "";
	
	for(int i=0; i < genre.length; i++){
		textgenre += genre[i] + " ";
	}
	
%>
	<jsp:useBean id="pBean" class="movie.peopleBean">
		<jsp:setProperty name="pBean" property="*"/>
	</jsp:useBean>

<%	
	pBean.setGenre(textgenre);

	
	//데이터베이스 클래스에 대한 객체 생성
	peopleDAO pdao = new peopleDAO();	
	pdao.insertpeople(pBean);

	//메인화면으로 이동
	response.sendRedirect("main.jsp");
	

	
%>	

	
</body>
</html>