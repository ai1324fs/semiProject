<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
/* 레이아웃 외곽 너비 400px 제한*/
.wrap{
    max-width: 480px;
    margin: 0 auto; /* 화면 가운데로 */
    background-color: #fff;
    height: 100%;
    padding: 20px;
    box-sizing: border-box;

}

.reviewform textarea{
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}
/* 별점 선택시 나오는 별에 대한 css */
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: white;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
/* 별점 선택이 안됐을때에 관한 css */
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./images/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: lightgray;
}

/* 별점 선택시 나오는 별에 대한 배경색 */
.rating .rate_radio:checked + label {
    background-color: red;
}
/* 리뷰 내용 css */
.warning_msg {
    display: none;
    position: relative;
    text-align: center;
    background: white;
    line-height: 26px;
    width: 100%;
    color: red;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #e0e0e0;
}
</style>
<meta charset="UTF-8">
<title>평점</title>
<script>
/* 별점에 대한 함수 */
//별점 마킹 모듈 프로토타입으로 생성
function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(newrate){
	
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
    let items = document.querySelectorAll('.rate_radio');
    items.forEach(function(item, idx){
        if(idx < newrate){
            item.checked = true;
        }else{
            item.checked = false;
        }
    });
}
let rating = new Rating();//별점 인스턴스 생성

document.addEventListener('DOMContentLoaded', function(){
    //별점선택 이벤트 리스너
    document.querySelector('.rating').addEventListener('click',function(e){
        let elem = e.target;
        if(elem.classList.contains('rate_radio')){
            rating.setRate(parseInt(elem.value));
        }
    })
});

/* 버튼 클릭시 유효한 값인지 계산하는 함수 */
//상품평 작성 글자수 초과 체크 이벤트 리스너
document.querySelector('.review_textarea').addEventListener('keydown',function(){
    //리뷰 400자 초과 안되게 자동 자름
    let review = document.querySelector('.review_textarea');
    let lengthCheckEx = /^.{400,}$/;
    if(lengthCheckEx.test(review.value)){
        //400자 초과 컷
        review.value = review.value.substr(0,400);
    }
});

//저장 전송전 필드 체크 이벤트 리스너
document.querySelector('#save').addEventListener('click', function(e){
    //별점 선택 안했으면 메시지 표시
    if(rating.rate == 0){
        rating.showMessage('rate');
        return false;
    }
    //리뷰 5자 미만이면 메시지 표시
    if(document.querySelector('.review_textarea').value.length < 5){
        rating.showMessage('review');
        return false;
    }
    //폼 서밋
});

//valueCheck로 함수의 value값을 지정
function valueCjeck(obj){
	var value = obj.value;
	if(value){
		obj.value = "1";
	} else {
		obj.value = "2";
	}
}

</script>
</head>
<body>
<div class="wrap">
    <h1>후기</h1>
    <form name="reviewform" class="reviewform" method="post" action="gradePro.jsp">
        <input type="hidden" name="rate" id="rate" value="0"/>
        <p class="title_star">별점과 리뷰를 남겨주세요.</p>
 
        <div class="review_rating">
            <div class="warning_msg">별점을 선택해 주세요.</div>
            <div class="rating">
                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
               <!--  <input type="checkbox" name="grade" id="rating1" value="1" class="rate_radio" title="1점">
                <label for="rating1"></label> -->
                
                <input type="checkbox" name="grade" id="rating1" value="1" onchange="valueCheck(this);" class="rate_radio" title="1점">
                <label for="rating1"></label>
                
			   <!--  <input type="checkbox" name="grade" id="rating3" value="3" class="rate_radio" title="3점">
				<label for="rating3"></label> -->
                
                <input type="checkbox" name="grade" id="rating2" value="2" onchange="YnCheck(this);" class="rate_radio" title="2점">
                <label for="rating2"></label>
                
                <!-- <input type="checkbox" name="grade" id="rating5" value="5" class="rate_radio" title="5점">
                <label for="rating5"></label> -->
                
                <input type="checkbox" name="grade" id="rating3" value="3" onchange="YnCheck(this);" class="rate_radio" title="3점" >
                <label for="rating3"></label>
                
                <!-- <input type="checkbox" name="grade" id="rating7" value="7" class="rate_radio" title="7점">
                <label for="rating7"></label> -->
                
                <input type="checkbox" name="grade" id="rating4" value="4" onchange="YnCheck(this);" class="rate_radio" title="4점">
                <label for="rating4"></label>
                
                <!-- <input type="checkbox" name="grade" id="rating9" value="9" class="rate_radio" title="9점">
                <label for="rating9"></label> -->
                
                <input type="checkbox" name="grade" id="rating5" value="5" onchange="YnCheck(this);" class="rate_radio" title="5점">
                <label for="rating5"></label>
            </div>
        </div>
        <div class="review_contents">
            <div class="warning_msg">5자 이상으로 작성해 주세요.</div>
            <textarea rows="10" class="review_textarea" name="writing"></textarea>
        </div>   
        <div class="cmd">
            <input type="submit" value="등록" id="checkSubmit">
        </div>
    </form>
</div>

<!-- <script type="text/javascript">
	
	$(document).ready(function(){
		
	
	
	$("#checkSubmit").on('click', function(){
		var saveBuy = [];
		
		
		$("input[name=grade]:checked").each(function(){
			saveBuy.push($(this).val());
		});
		alert(saveBuy);
	});
});
</script> -->

</body>
</html>