<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>suyeong Bassett</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="jquery.easing.1.3.js" /></script>
<script src="jquery.bxslider.js"></script>
<script src="jquery.innerfade.js"></script>
<link rel="stylesheet" href="jquery.bxslider.css" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<style>
a:link, a:hover, a:visited {
	text-decoration: none;
	color: gray;
}

body {
	margin: 0;
	padding: 0;
	background-color:rgb(57, 58, 57);
}

li, ul {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

#wrapper {
	width: auto;
	margin: 0 auto;
}

#header {
	height: 130px;
	background-color:rgb(21, 22, 21);
}

.topbar {
	margin-left: 1300px;
}

.topbar>ul>li {
	float: left;
	font-size: 0.9em;
	margin-top: 30px;
	margin-left: 15px;
}

.title {
	float: left;
	height: 50px;
	line-height: 50px;
	width: 20%;
	text-align: center;
	margin-top: 30px;
}

.title>ul {
	position: relative;
	z-index: 10;
	background-color: rgb(21, 22, 21);
	display: none;
}

img{
	width: 100%;
	height: 780px;
}

.bx-wrapper {
	border: none;
}

#main1_imgSlider_Txt>li {
	position: absolute;
	z-index: 10;
	top: -300px;
	font-size: 4em;
	color: #fff;
	margin-left: 200px;
}

#notice {
	width: 350px;
	height: 50px;
	background-color: rgb(53, 52, 52);
	margin-left: 1350px;
	margin-top: 78px;
	position: absolute;
}

#notice_text {
	margin-left: 20px;
	line-height: 50px;
	color: white;
}

#notice_content>li {
	position: absolute;
	z-index: 10;
	top: -36px;
	margin-left: 100px;
	color: #fff;
}
.fa-chevron-down {
	position: absolute;
	color: white;
	top: 20px;
	margin-left:260px;
}

.menu_item:hover {
	background-color: rgb(191, 21, 77);
	font-weight: bold;
	background-image: url('./img/ex.png'); 
	background-size: contain;
}

/*.title:hover {
	font-weight: bold;
}
 */
#main2 {
	overflow: hidden;
}
 
.main2Img>a>img{
	width:850px;
	height:550px;
	float:left;
	margin-right:150px;
}
#main2_imgSlider{
	width:3200px;
	overflow-y:scroll;
	overflow-x:scroll;
	white-space:nowrap;
	
}


</style>
<script>

	$(function() {
		// 메뉴바 나오기
		$(".title").on({
			mouseenter : function() {
				$(this).children('ul').css('display', 'block').css('border-top','3px solid rgb(191, 21, 77)');
			},
			mouseleave : function() {
				$(this).children('ul').css('display', 'none');
			}
		});

		//슬라이드 이미지 나오기
		$("#main1_imgSlider").bxSlider({
			mode : 'horizontal',
			slideWidth : 1700,
			slideHeight : 500,
			speed : 2000,
			auto : true//자동시작
			,
			infiniteLoop : true//반복
		
		});
		//이미지 설명
		$('#main1_imgSlider_Txt').innerfade({
			animationtype : 'slide',
			speed : 2000,
			timeout : 5000
		});
		// 공지사항
		$('#notice_content').innerfade({
			animationtype : 'slide',
			speed : 2000,
			timeout : 5000
		});
		
		$('.menu_item').on({
			mouseenter: function() {
				$(this).children().css('color', 'white');
			},
			mouseleave: function() {
				$(this).children().css('color', 'grey');
			}
		});
		$('.title').on({
			mouseenter: function() {
				$(this).children().css('color', 'white');
			},
			mouseleave: function() {
				$(this).children().css('color', 'grey');
			}
		});
		
		
		$(window).on("wheel", function(e) {
			//객체.animate({Json데이터 옵션}, 밀리초, 콜백함수)
				console.log(window.scrollY);
				if(window.scrollY > 500) {
					if(e.originalEvent.deltaY > 0) {
						$("#main2_imgSlider").animate({
							marginLeft: "-1300px"
						});
					} else if (e.originalEvent.deltaY < 0) {
						$("#main2_imgSlider").animate({
							marginLeft: "0px"
						});
					}
					console.log(e.originalEvent.deltaY);
				} 
			});
	});
	
	
</script>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div class="topbar">
				<ul>
					<li><a href="#">Welcome 1호점 점주님 ♡</a></li>
					<li><a href="#">Login</a></li>
					<li><a href="#">Logout</a></li>
				</ul>
			</div>
			<div>
			<ul id="menu">
				<li class="title"><a href="#">공지사항</a>
					<ul>
						<li class="menu_item"><a href="#">공지사항목록</a></li>
						<li class="menu_item"><a href="#">공지사항쓰기</a></li>

					</ul>
				</li>
				<li class="title"><a href="#">매출분석</a>
					<ul>
						<li class="menu_item"><a href="#">매출분석</a></li>
					</ul>
				</li>
				<li class="title"><a href="#">직원관리</a>
					<ul>
						<li class="menu_item"><a href="#">직원목록</a></li>
						<li class="menu_item"><a href="#">직원추가(질문! 추가를 왜 지점에서? 알바?)</a></li>
					</ul>
				</li>
				<li class="title"><a href="#">재고관리</a>
					<ul>
						<li class="menu_item"><a href="#">발주하기</a></li>
						<li class="menu_item"><a href="#">재고확인</a></li>
					</ul>
				</li>
			</ul>
		</div>
			<div id="notice">
				<div id="notice_text">notice</div>

				<div>
					<ul id="notice_content">
						<li><a href="">notice</a></li>
						<li><a href="">suyeongBassett</a></li>
						<li><a href="">notice notice notice</a></li>
					</ul>
				</div>
				<i class="fas fa-chevron-down"></i><!-- notice 버튼...안됨 -->
			</div>
		</div><!-- header -->
		<div id="main1">
			<ul id="main1_imgSlider">
				<li><a href=""><img src="img/coffee10.jpg"></a></li>
				<li><a href=""><img src="img/coffee10.jpg"></a></li>
				<li><a href=""><img src="img/coffee10.jpg"></a></li>
				<li><a href=""><img src="img/coffee10.jpg"></a></li>
			</ul>
		</div>
		<div>
			<ul id="main1_imgSlider_Txt">
				<li><span id="imgText">우리의 작은 말과 행동</span><br/>
					 곧 우리의 브랜드가 됩니다</li>
				<li><span id="imgText">고객이 신뢰할 수 있는 품질로</span> <br/>
					사랑받는 브랜드, 존경받는 기업이 됩시다</li>
				<li><span id="imgText">우리가 만드는 제품과 서비스로</span><br/>
					 	고객의 하루를 행복하게 합니다. </li>
				<li><span id="imgText">맛있는 커피와 최고의 서비스를 제공합시다</span></li>
			</ul>
		</div>
		<div id="main2">
			<div id="main2_imgSlider">
				<div class=main2Img><a href="#"><img src="img/coffee1.jpg"></a></div>
				<div class=main2Img><a href="#"><img src="img/coffee2.jpg"></a></div>
				<div class=main2Img><a href="#"><img src="img/coffee3.jpg"></a></div>
			</div>
		</div>
	</div><!-- wrapper -->