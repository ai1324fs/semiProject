<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="movie.rewordDAO" %>  
<%@ page import="movie.rewordBean" %>	
<!DOCTYPE html>
<html>
<head>
<style>
#myform fieldset{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
}
#myform input[type=radio]{
    display: none; /* 라디오박스 감춤 */
}
#myform label{
    font-size: 4em; /* 이모지 크기 */
    color: transparent; /* 기존 이모지 컬러 제거 */
    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
}
#myform label:hover{
    text-shadow: 0 0 0 #a00; /* 마우스 호버 */
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 #a00; /* 마우스 호버 뒤에오는 이모지들 */
}
#myform fieldset legend{
    text-align: left;
}

#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #a00; /* 마우스 클릭 체크 */
}
</style>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body style="width:50%">

<%

	request.setCharacterEncoding("UTF-8");

	String mno = "23138";
	String title = "죽어도 좋은 경험";
	String id1 = "1";//request.getParameter("id");
	int id = Integer.parseInt(id1);
	int rno = 1;

	rewordDAO rdao = new rewordDAO();
	rewordBean rbean = rdao.OneSelectreword(rno);
%>
<form name="myform" id="myform" method="post" action="./save">
    <fieldset>
        <legend>이모지 별점</legend>
        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
    </fieldset>
</form>



					<div class="reword-box">

						<h4>영화에 대한 코멘트를 남겨주세요!</h4>
						<div>
							<input type="hidden" name="mno" value="<%=rbean.getMno() %>">
							<input type="hidden" name="title" value="<%=rbean.getTitle() %>">
						</div>
						<div class="grade">
							<input type="radio" name="grade" value="5" id="5"><label for="5">☆</label> 
							<input type="radio" name="grade" value="4" id="4"><label for="4">☆</label> 
							<input type="radio" name="grade" value="3" id="3"><label for="3">☆</label>
							<input type="radio" name="grade" value="2" id="2"><label for="2">☆</label> 
							<input type="radio" name="grade" value="1" id="1"><label for="1">☆</label>
						</div>
</body>
</html>