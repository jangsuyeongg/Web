<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE HTML>
<html>
<head>
<title> MENU | Leaf</title>


<script>
function _jssoCompleted(data, code){
	if (data != "") {
		 $.ajax({
			url : "/member/loginSSO.pb",
			data: {"data":data},
			type: "POST",
			dataType : "json",
			async: false,
			success : function(data) {
				var url = location.href;
				if (data.succeed) {
					window.location.reload(true);
				}else{
				}
			}
		});
	}
}
</script>	

<script type="text/javascript" src="https://sso.maeildo.com:3443/findCookie.jsp?j_sso_q=ka5vV4iSkNa%2FIMCcsw3zFGDEjRFrxa4zKPT02699VLwMX9lI90pwDFOW073mu72xzaUMBE9H0gEOS9efiX3RYzh5TC91TlZOUEZoZjZwTzl4aFJGNnh3dEVRQ1pLVkhmUElFTUptdUgvYzA9"></script>

	 
<script>
	function goView(dpid){
		var frm = document.moveFrm;
		frm.action = "/menu/View.pb";
		frm.dpid.value = dpid;
		
		frm.submit();
	}
	
	$(function() {	    
		$(".footMenu li:nth-child(1).on").parents(".footMenu").addClass("imgOpenWrap1");
		$(".footMenu li:nth-child(2).on").parents(".footMenu").addClass("imgOpenWrap2");
		$(".footMenu li:nth-child(3).on").parents(".footMenu").addClass("imgOpenWrap3");
		$(".footMenu li:nth-child(4).on").parents(".footMenu").addClass("imgOpenWrap4");
		$(".footMenu li:nth-child(5).on").parents(".footMenu").addClass("imgOpenWrap5");
		
		
		$(".footMenu li").bind("mouseenter focusin", function(){
			var index = $(".footMenu ul li").index(this);
			console.log(index)
			
			if(index == 0){
				$(".footMenu>ul").removeClass().addClass('imgOpen1');
				
			}else if(index == 1){
				$(".footMenu>ul").removeClass().addClass('imgOpen2');
				
			}else if(index == 2){
				$(".footMenu>ul").removeClass().addClass('imgOpen3');
				
			}
			else if(index == 3){
				$(".footMenu>ul").removeClass().addClass('imgOpen4');
				
			}
			else if(index == 4){
				$(".footMenu>ul").removeClass().addClass('imgOpen5');
				
			}
		})

		
		.bind("mouseleave focusout" , function(){
			$(this).parent().removeClass();
			return false;
		});
		
		
	})

</script>
</head>
<body>

<script>
$(function(){
	
	if($("#mainWrap").length < 1){	
		$(window).scroll(function(){
			var scrollTop = $(this).scrollTop();
			if(scrollTop > 0){
				$("#headerWrap").addClass("on")
			}else{
				$("#headerWrap").removeClass("on")
			}
		});
	}
	$("#gnb>ul").bind("mouseenter focusin", function(){
		$(this).parents("#headerWrap").addClass("styleB");
		$("#gnb>ul").parent().addClass("on");
		return false;
	})
	.bind("mouseleave focusout" , function(){
		$(this).parents("#headerWrap").removeClass("styleB");
		$("#gnb>ul").parent().removeClass("on");
		return false;
	});
});
</script>
     
<div class="tabStyleA tabStyleB">
		<ul class="listTab coffee">
			<li class=""><a href="">전체</a></li>
			<li class="on"><a href="">Coffee</a></li>
			<li class=""><a href="">Latte</a></li>
			<li class=""><a href="">Espresso</a></li>
			<li class=""><a href="">Cold Brew</a></li>
			<li class=""><a href="">Single Origin </a></li>
		</ul> <!-- coffee -->
</div><!-- 해당메뉴일때 class="on" -->	 
		<!-- menuList -->
		<div class="menuList">
			<ul class="listStyleB">
				<li>
					<div class="iconArea">					
							<span class="bestIcon">Best</span>
					</div>
					<a href="#" onclick="goView('PB170134');return false;"><!-- best제품일경우 class="best" 추가 -->
						<div class="thum"><img class="imgVm" src="img/coffee13.jpg" alt=""></div>
						<div class="txtArea">아이스 룽고<span class="sTxt">Iced Lungo</span></div>	
					</a>
				</li>
			
				<li>
					<div class="iconArea">
					
							<span class="bestIcon">Best</span>
								
					</div>
					<a href="#" onclick="goView('PB170054');return false;"><!-- best제품일경우 class="best" 추가 -->
						<div class="thum"><img class="imgVm" src="/upload/product/A/thumbnail_1_201903211031182001.jpg" alt=""></div>
						<div class="txtArea">룽고<span class="sTxt">Lungo</span></div>	
					</a>
				</li>
			
				<li>
					<div class="iconArea">
						
						
					</div>
					<a href="#" onclick="goView('PB179549');return false;"><!-- best제품일경우 class="best" 추가 -->
						<div class="thum"><img class="imgVm" src="/upload/product/A/thumbnail_1_201903211042263731.jpg" alt=""></div>
						<div class="txtArea">아이스 아메리카노<span class="sTxt">Iced Americano</span></div>	
					</a>
				</li>
			
				<li>
					<div class="iconArea">
						
						
					</div>
					<a href="#" onclick="goView('PB179548');return false;"><!-- best제품일경우 class="best" 추가 -->
						<div class="thum"><img class="imgVm" src="/upload/product/A/thumbnail_1_201903211033328911.jpg" alt=""></div>
						<div class="txtArea">아메리카노<span class="sTxt">Americano</span></div>	
					</a>
				</li>	
			</ul>
			</div>