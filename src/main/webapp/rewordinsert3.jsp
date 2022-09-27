<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="movie.rewordDAO" %>  
<%@ page import="movie.rewordBean" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<style>
.rewordform .radio_box{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 별 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
}
.rewordform input[type=radio]{
    display: none; /* 라디오박스 감춤 */
}
.rewordform label{
    font-size: 60px; /* 별 크기 */
    color: transparent; /* 기존 별 컬러 제거 */
    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
    
}
.rewordform label:hover{
    text-shadow: 0 0 0 #a00; /* 마우스 호버 */
}
.rewordform label:hover ~ label{
    text-shadow: 0 0 0 #a00; /* 마우스 호버 뒤에오는 이모지들 */
}
.rewordform radio_box legend{
    text-align: center;
}

.rewordform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #a00; /* 마우스 클릭 체크 */
}
</style>
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
	<form action="rewordinsertPro.jsp" method="post" class="rewordform" id="myform">
					<div>

						<h4>영화에 대한 코멘트를 남겨주세요!</h4>
						<div>
							<input type="hidden" name="mno" value="<%=rbean.getMno() %>">
							<input type="hidden" name="title" value="<%=rbean.getTitle() %>">
						</div>
						
					    <div class="radio_box">
					        <!-- <legend>별점</legend> -->
							<input type="radio" name="grade" value="5" id="star1"><label for="star1">★</label> 
							<input type="radio" name="grade" value="4" id="star2"><label for="star2">★</label> 
							<input type="radio" name="grade" value="3" id="star3"><label for="star3">★</label>
							<input type="radio" name="grade" value="2" id="star4"><label for="star4">★</label> 
							<input type="radio" name="grade" value="1" id="star5"><label for="star5">★</label>
							
						</div>
						    
						
						<br>
						
						<div>
							<textarea name="writing" placeholder="영화는 어떠셨나요?" rows="4" style="width:500px;"></textarea>
						</div>
						<br>
						
						<div>
							<button type="submit">입력</button>
							<button type="reset">취소</button>
						</div>
					</div>
						<!-- <legend>별점 선택</legend> -->
						
						       
	</form>
</body>
</html>