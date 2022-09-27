<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>별점</title>
<script>
var $starEls = $('#star span.star');
var rate = 0;

$starEls.each(function (index, el) {
    $(el).on('click', function () {
        rating(index);
    });
});

function rating(score) {
    $starEls.each(function (i, el) {
        if (i <= score) {
            $(el).addClass('on');
        } else {
            $(el).removeClass('on');
        }
    });

    rate = score + 1;
}

function setStar(point) {
    // todo 별 이미지 css 관련 처리
    // global variable 에 파라미터로 받은 point 할당
}

......


function regist() {
    // todo 별포인트를 서버로 전송시킬 데이터에 포함
}
</script>

</head>
<body>
<div class="star-container" id="star">

    <span class="star">★</span>
    <span class="star">★</span>
    <span class="star">★</span>
    <span class="star">★</span>
    <span class="star">★</span>

</div>
</body>
</html>