<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
	.bx-wrapper {
		border: none;
		max-width: 100%;
		}
	a:link, a:hover, a:visited {
		text-decoration: none;
		color: black;
	}
	
	body {
		margin: 0;
		padding: 0;
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
	
	img{
		width: 100%;
		height: 100vh;
	}
	
	
	
	#main1{
		width:100%;
		height:100vh;
	}
	
	#main1_imgSlider_Txt>li {
		position: absolute;
		z-index: 10;
		top: -300px;
		font-size: 2em;
		color: rgb(30, 57, 50);
		font-weight:bold;
		margin-left: 200px;
	}
	#imgText{
		font-size:2em;
		color:rgb(0, 163, 239);
	}
	
	#notice {
		width: 350px;
		height: 50px;
		background-color:rgb(0, 163, 239);
		position: relative;
		top: -50px;
		
	}
	
	#notice_text {
		margin-left: 20px;
		line-height: 50px;
		color: black;
	}
	
	#notice_content>li {
		position: absolute;
		z-index: 10;
		top: -36px;
		margin-left: 100px;
		color: rgb(0, 0, 0);
	}
	.fa-chevron-down {
		position: absolute;
		color: black;
		top: 20px;
		margin-left:260px;
	}
	
</style>
<script>
	$(function() {
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
		
	});
</script>
</head>
<body>
	<div id="wrapper">
	<%@ include file="leaf_store_top.jspf" %>
		<div id="main1">
			<ul id="main1_imgSlider">
				<li><a href=""><img src="img/coffee13.jpg"></a></li>
				<li><a href=""><img src="img/coffee14.jpg"></a></li>
				<li><a href=""><img src="img/coffee12.jpg"></a></li>
				<li><a href=""><img src="img/coffee9.jpg"></a></li>
			</ul>
		</div>
		<div>
			<ul id="main1_imgSlider_Txt">
				<li><span id="imgText">우리의 작은 말과 행동</span><br/><br/>
					 곧 우리의 브랜드가 됩니다</li>
				<li><span id="imgText">고객이 신뢰할 수 있는 품질로</span> <br/><br/>
					사랑받는 브랜드, 존경받는 기업이 됩시다</li>
				<li><span id="imgText">우리가 만드는 제품과 서비스로</span><br/><br/>
					 	고객의 하루를 행복하게 합니다. </li>
				<li><span id="imgText">맛있는 커피와 최고의 서비스를 제공합시다</span></li>
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
			<i class="fas fa-chevron-down"></i><!-- notice버튼 -->
		</div>
		<%@ include file="leaf_store_foot.jspf" %>
	</div><!-- wrapper -->