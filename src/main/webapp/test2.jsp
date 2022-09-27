<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>

.radio_box {
float:left;
position:relative;
margin:0;
width:100px;
height:20px;
background:url('images/star_gray.png')
}

.radio_box .star_score_span {
position:absolute;
top:0;
left:0;
height:20px;
background:url('images/star_red.png');
}
</style>
</head>
<body>
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
<%-- 	<form action="rewordinsertPro.jsp" method="post" class="rewordform" id="myform">
					<div>

						<h4>영화에 대한 코멘트를 남겨주세요!</h4>
						<div>
							<input type="hidden" name="mno" value="<%=rbean.getMno() %>">
							<input type="hidden" name="title" value="<%=rbean.getTitle() %>">
						</div>
						
						

            
            
            
					    <div class="radio_box">
					        <!-- <legend>별점</legend> -->
							<input type="radio" name="grade" value="10" id="star1"><label for="star1" ></label> 
							<input type="radio" name="grade" value="9" id="star2"><label for="star2"></label> 
							<input type="radio" name="grade" value="8" id="star3"><label for="star3"></label>
							<input type="radio" name="grade" value="7" id="star4"><label for="star4"></label> 
							<input type="radio" name="grade" value="6" id="star5"><label for="star5"></label>
							<input type="radio" name="grade" value="5" id="star6"><label for="star6" ></label> 
							<input type="radio" name="grade" value="4" id="star7"><label for="star7"></label> 
							<input type="radio" name="grade" value="3" id="star8"><label for="star8"></label>
							<input type="radio" name="grade" value="2" id="star9"><label for="star9"></label> 
							<input type="radio" name="grade" value="1" id="star10"><label for="star10"></label>							
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
						
						       
	</form> --%>

<div class="radio-box">

</div>





            

</body>
</html>