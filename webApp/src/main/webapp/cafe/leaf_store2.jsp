<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
	.bx-wrapper {
		border: none;
		
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
	
	.item>img{
    width: 100%;
    height: 100vh;
    border:0;
}

/* 이솜이 파일 css */
	#backImg{
	    position: fixed;
	    top:0;
	    z-index: -1;
	    opacity: 0.7;
	    width: 100%;
	    height: 100vh;
	}
	#backImg>img{
	    width: 100%;
	    height: 100vh;
	}
	.bx-default-pager{
	    display: none;
	}
	.bx-wrapper img{
	    -moz-box-shadow: none;
	    -webkit-box-shadow: none;
	    box-shadow: none;
	    border: 0;
	}
	
	.blank{
	    position: relative;
	    z-index: -2;
	    height:750px;
	    background-color: white;
	    opacity: 0;
	
	}
	.notice_footer{
	    display: flex;
	    flex-direction: column;
	    width: 100%;
	    height: 100vh;
	}
	.notice{
	    display: flex;
	    flex: 4 1 0;
	    background-color: white;
	}
	.noticeText{
	    font-family: Oswald;
	    font-size: 6em;
	    flex: 1 1 0;
	    justify-content: center;
	
	}
	.noticeText_icon{
	    margin-top: 80px;
	    display: flex;
	    flex-direction: column;
	    justify-items: center;
	}
	.noticeText_icon>i{
	    font-size: 10em;
	    padding: 30px 0 0 23px;
	    flex: 2 1 0;
	}
	.text{
	    color:rgb(0, 163, 239);
	}
	.list{
	    font-size: 1.5em;
	}
	.noticeList{
	    padding-left: 100px;
	    padding-top: 100px;
	    flex: 1 1 0;
	}
	.noticeBlank{
	    flex: 0.5 1 0;
	}
	.noticeList>li{
	    padding: 20px 15px;
	    border-bottom: 1px solid gray;
	}
	.noticeList>li>button{
	   text-align: left;
	
	}
	button{
    border: none;
    background-color: white;
    color: dimgray;
    padding: 0;
	}
	a:link, a:hover, a:visited{
	    color: dimgray;
	    text-decoration: none;
	}
	
</style>
<script>
	$(function (){
	    $('.mainImg').bxSlider({
	        mode:'horizontal', //화면전환방식 : 'horizontal'(기본), 'vertical', 'fade'
	        // slideWidth:800,
	        // slideHeight:400,
	        speed:2000,//변환속도
	        auto:true, //자동시작(true,false)
	        infiniteLoop: true, //반복여부설정(true,false)
	        //adaptiveHeight:true//이미지 크기에 따라 높이 조절(true,false)
	        hideControlOnEnd: true //처음과 마지막에 컨트롤러 표시여부(true, false) infiniteLoop이 있어야함
	
	    });console.log("도착");
	
	});
</script>
</head>
<body>
	
	<%@ include file="leaf_store_top.jspf" %>
	 <div class="mainImg">
        <div class="item">
            <img src="img/coffee9.jpg"/>
        </div>
        <li class="item">
            <img src="img/main1.jpg"/>
        </li>
        <li class="item">
            <img src="img/main3.jpg"/>
        </li>
    </div>
    <div class="blank"></div>
    <div class="notice_footer">
        <section class="notice">
                <div class="noticeBlank"></div>
            <div class="noticeText_icon">
<!--                <div id="blank"></div>-->
                <span class="noticeText">NOTICE</span><br/>
                <i class="fas fa-chalkboard"></i>
            </div>
            <ul class="noticeList">
                <li>
                    <button>
                        <span class="text">공지사항</span><br/><br/>
                        <a href="#" class="list">leaf 마포점 오픈</a><br/>
                        <span>2021.09.18</span>
                    </button>
                </li>
                <li>
                    <button>
                        <span class="text">공지사항</span><br/><br/>
                        <a href="#" class="list">leaf 마포점 오픈</a><br/>
                        <span>2021.09.18</span>
                    </button>
                </li>
                <li>
                    <button>
                        <span class="text">공지사항</span><br/><br/>
                        <a href="#" class="list">leaf 마포점 오픈</a><br/>
                        <span>2021.09.18</span>
                    </button>
                </li>
            </ul>
            <div class="noticeBlank"></div>
        </section>
        
       <!-- background -->
	 <div id="backImg"><img src="img/main1.jpg" ) alt=""></div>
		<%@ include file="leaf_store_foot.jspf" %>
