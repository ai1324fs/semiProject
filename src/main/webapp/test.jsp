<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
  .star {
    position: relative;
    font-size: 2rem;
    color: #ddd;
  }
  
  .star input {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
  .star span {
    width: 0;
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
  }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
const drawStar = (target) => {
    document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
  }
</script>

<span class="star">
  ★★★★★
  <span>★★★★★</span>
  <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
</span>

</body>
</html>