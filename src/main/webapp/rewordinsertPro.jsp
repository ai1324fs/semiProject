<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%>  
<%@ page import="movie.rewordDAO"%>
<%@ page import="movie.rewordBean"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글저장</title>
</head>
<body>
	<jsp:useBean id="rBean" class="movie.rewordBean">
		<jsp:setProperty name="rBean" property="*"/></jsp:useBean>

<%
	request.setCharacterEncoding("UTF-8");
	


	String id = request.getParameter("id");
	String mno = request.getParameter("mno");
	String title = request.getParameter("title");
	double grade = Integer.parseInt(request.getParameter("grade"));
	String writing = request.getParameter("writing");

	
	
	
	
	rewordDAO rdao = new rewordDAO();
	rdao.rewordinsert(id,mno,title,grade,writing);
	
	
	response.sendRedirect("main.jsp?center=movieDetail.jsp?mno="+request.getParameter("mno"));
	System.out.println("로그인 :" + id);
	System.out.println("영화번호 :" + mno);
	System.out.println("영화제목 :" + title);
	System.out.println("영화점수 :" + grade);
	System.out.println("영화내용 :" + writing);
%>	
	

</body>
</html>