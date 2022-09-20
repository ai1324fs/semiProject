<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 메뉴</title>
<style>
details { margin:5px 0 10px; }

details > summary { 
background:#444; 
color:#fff; 
padding:10px; 
outline:0; 
border-radius:5px; 
cursor:pointer; 
transition:background 0.5s; 
text-align:left; 
box-shadow: 1px 1px 2px gray;
}

details > summary::-webkit-details-marker { 
background:#444; 
color:#fff; 
background-size:contain; 
transform:rotate3d(0, 0, 1, 90deg); 
transition:transform 0.25s;
}


element.style {
    width: 150px;
    height: 40px;
}
details[open] > summary::-webkit-details-marker { transform:rotate3d(0, 0, 1, 180deg);}
details[open] > summary { background:#444;}
details[open] > summary ~ * { animation:reveal 0.5s;}
.tpt { background:#444; color:#fff; margin:5px 0 10px; padding:5px 10px; line-height:25px; border-radius:5px; box-shadow: 1px 1px 2px gray;}

@keyframes reveal {
    from { opacity:0; transform:translate3d(0, -30px, 0); }
    to { opacity:1; transform:translate3d(0, 0, 0); }
}
</style>
</head>
<body>
<details style="width: 150px; height: 40px;">
    <summary>Menu</summary>
    <div class="tpt">여름 선정 영화</div>
    <div class="tpt">Best 추천 영화</div>
    <div class="tpt">LIKE[찜]</div>
    <div class="tpt">요청 게시판</div>
    
</details>
</body>
</html>