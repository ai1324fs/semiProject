<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="movie.boardDAO"%>
<%@ page import="movie.boardBean"%>     
<!DOCTYPE html>
<html>
<head>
<style>
	body {
		background: gray;
	}
</style>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
</head>
<body>
<%
	int b_no = Integer.parseInt(request.getParameter("b_no"));

	boardDAO bdao = new boardDAO();
	boardBean bBean = bdao.oneselectboard(b_no);
%>

<h2 align="center">게시글 상세 보기 화면 구현</h2>
<div align="center">
	<table border="1" style="text-align: center; width: 60%;">
		<tr align="center" style="height: 40; background: yellow;">
			<td width="100">번호</td>
			<td><%=bBean.getb_no() %></td>
			<td width="200">조회수</td>
			<td><%=bBean.getReadCount() %></td>
		</tr>
		<tr align="center" style="height: 40; background: yellow;">
			<td width="100" colspan="2">작성자</td>
			<td colspan="2"><%=bBean.getWriter() %></td>
		</tr>		
		<tr align="center" style="height: 40; background: yellow;">
			<td width="100">작성일자</td>
			<td><%=bBean.getReg_date() %></td>
			<td width="200">제목</td>
			<td><%=bBean.getSubject() %></td>
		</tr>
		<tr align="center" style="height: 40; background: yellow;">
			<td width="80">내용</td>
			<td colspan="3"><%=bBean.getContent() %></td>
		</tr>
		
		<tr style="height: 40; background: yellow;">
			<td colspan="4">
				<button onclick="location.href='boardRewrite.jsp?b_no=<%=bBean.getb_no()%>&ref=<%=bBean.getRef() %>&re_step=<%=bBean.getRe_step()%>&re_level=<%=bBean.getRe_level()%>'">댓글쓰기</button>&nbsp;&nbsp;
				<button onclick="location.href='boardUpdate.jsp?b_no=<%=bBean.getb_no() %>'">수정하기</button>&nbsp;&nbsp;
				<button onclick="location.href='boardDelete.jsp?b_no=<%=bBean.getb_no() %>'">삭제하기</button>&nbsp;&nbsp;
				<button onclick="location.href='boardList.jsp'">목록조회</button>&nbsp;&nbsp;
				<button onclick="location.href='boardwrite.jsp'">글쓰기</button>
			</td>
		</tr>
	</table>

</div>
</body>
</html>