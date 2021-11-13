<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name= "viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="   crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<style>
	.container{ 
		max-width: 1400px;
		height:855px;
		background-color:rgb(245, 240, 233);
	}
	.purchase_ok{
		width: 100%;
		height:400px;
		display:flex;
		margin-left:10px; 
		margin-top:5px;
	}
	
	.purchase_ok{
		overflow:scroll;
	}
	table,td,tr{
		padding-top: 0px;
    	padding-bottom: 0px;
    	height: 0px;
    	text-align:center;
	}
	#name{
		font-size:1.5em;
		font-weight:bold;
		text-align:center;
		line-height: 3;
	}
	#memo{
		height:200px;
		margin: 10px;
	}
	.memo{
		font-weight:bold;
	}
	#myinput{
		width: 300px;
		margin: 10px;
	}
</style>
<script>
$(()=>{
	$('#myinput').keyup(function(){
		var data = $(this).val().toLowerCase();
		
		$('#searchList>tr').filter(function(){
			var trData = $(this).text().toLowerCase(); //tr에 있는 문자를 구한다.
			var idx = trData.indexOf(data);// 없을때 -1, 있을때 0~정수
			//				true:그냥둠, false:숨겨
			$(this).toggle(idx>-1);
		});
	});
	
	$(".btn-warning").click(function(){
		alert('발주완료처리 되었습니다.');
	});
	
});

</script>
</head>
<body>
<div class="container">
	<div id="name">발주목록확인</div>
	<div class="search"><br/>
		<input type='text' id='myinput' placeholder='검색하기' class='form-control'/>
		<div class="purchase_ok">
			 <table class="table table-hover table-active">
	      	<thead>
	            <tr class="table-active">
	            	<td>발주번호</td>
	            	<td>가맹점명</td>
	                <td>상품번호</td>
	                <td>제품명</td>
	                <td>발주가격</td>
	                <td>발주수량</td>
	                <td>합계금액</td>
	                <td>발주날짜</td>
	                <td>발주상태</td>
	                <td>발주확인</td>
	            </tr>
	            </thead>
	            <tbody id='searchList'>	
		             <tr>
		             	<td>1</td>
		             	<td>서강대점</td>
		               	<td>2-1</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>대기</td>
	               	    <td><input type="submit" class='btn btn-warning btn-sm' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>2</td>
		             	<td>강남점</td>
		               	<td>2-2</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	 	<td>완료</td>
	               	 	<td><input type="submit" class='btn btn-warning btn-sm' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>3</td>
		             	<td>종로점</td>
		               	<td>2-3</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>완료</td>
	               	    <td><input type="submit" class='btn btn-warning btn-sm' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>4</td>
		             	<td>신촌점</td>
		               	<td>2-4</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>대기</td>
	               	    <td><input type="submit" class='btn btn-warning btn-sm' value="확인"/></td>
		            </tr>
		            <tr>
		             	<td>5</td>
		             	<td>명동점</td>
		               	<td>2-5</td>
		                <td>블랙원두</td>
		                <td>10000원</td>
		                <td>5개</td>
		                <td>50000</td>
	               	    <td>2021-09-19</td>
	               	    <td>대기</td>
	               	    <td><input type="submit" class='btn btn-warning btn-sm' value="확인"/></td>
		            </tr>
	         </tbody>
	      </table>
		</div>
	</div>
	<div class="memo"> 발주시 가맹점에서 쓴 메모 확인란
			<textarea class="form-control" id="memo">글 내용을 입력하는 곳</textarea>
	</div>
</div>
</body>
</html>