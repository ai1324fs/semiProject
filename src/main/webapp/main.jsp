<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.StringTokenizer"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="body.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>1'M MOVIE</title>
<style type="text/css">

$('#header').css({
height:150;
align:center;
})

$('#body').css({
height:150;
align:center;
})

$('#footer').css({
height:150;
align:center;
})
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
	var img = $('<img />');
	
	img.attr({
		src: './images/apple.png',
		alt: '사과이미지',
		width: 200,
		marginLeft: 250,
		align: center
	})
	$(document).ready(function(){
	$('#header').before(img);
	
	})
})
</script>
<body bgcolor="darkgray">
<div>

	<div id="header">
			<jsp:include page="header.jsp"></jsp:include>

	</div>
	<div id="body">
	<span>
			<jsp:include page="body.jsp"></jsp:include>
		</span>
	</div>
	<div id="footer">
		<span align="center">
			<jsp:include page="footer.jsp"></jsp:include>
		</span>
	</div>

</div>
</body>
</html>