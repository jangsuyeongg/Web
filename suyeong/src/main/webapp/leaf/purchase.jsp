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
	.main{
		border:1px solid gray; 
		max-width: 1400px;
		margin:0 auto;
		overflow:auto;
	}
	.search{
		width:400px;
		height:586px;
		border:1px solid gray; 
		float:left;
		margin-right:10px;
		margin-top:5px; 
	}
	.partner{
		width:400px;
		border:1px solid gray; 
		float:left;
		margin-right:10px; 
		margin-top:5px;
	}
	.search_partner{
		width:400px;
	}
	.purchase{
		width: 958px;
		height:400px;
		border:1px solid gray;
		display:flex;
		margin-left:10px; 
		margin-top:5px;
	}
	.purchase_ok{
		width: 958px;
		height:400px;
		border:1px solid gray;
		display:flex;
		margin-left:10px; 
		margin-top:5px;
	}
	.text{
		width:100px;
	}
	.search,.purchase_ok,.purchase{
		overflow:scroll;
	}
	table,td,tr{
		padding-top: 0px;
    	padding-bottom: 0px;
    	height: 0px;
    	text-align:center;
	}
	#btn1{
		margin-left:1100px;
	}
	#name{
		font-size:1.5em;
		font-weight:bold;
		margin-top:10px;
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
	$(".btn-info").click(function(){
		alert('발주신청 되었습니다.');
	});
	
});

</script>
</head>
<body>
<div class="main">
	<div id="name">발주관리  <a href="/suyeong/leaf/purchase_Modify.jsp"><input type="submit" class='btn btn-warning btn-sm' value="수정" id="btn1"/></a>
				<input type="submit" class='btn btn-danger btn-sm' value="취소"/></div>
	<div class="search_partner">
	<div class="search">
		<input type='text' id='myinput' placeholder='원하시는 상품을 검색하세요.' class='form-control'/>
		<table class='table table-hover table-active'>
			<thead>
			<tr>
				<td>상품번호</td>
				<td>제품명</td>
			</tr>
			</thead>
			<tbody id='searchList'>	
			<tr>
				<td>1</td>
				<td>블랙원두</td>
				</tr>
			<tr>
				<td>2</td>
				<td>화이트원두</td>
			</tr>
			<tr>
				<td>3</td>
				<td>종이컵</td>
			</tr>
			<tr>
				<td>4</td>
				<td>플라스틱컵</td>
			</tr>
			<tr>
				<td>5</td>
				<td>빨대</td>
			</tr>
			<tr>
				<td>1</td>
				<td>블랙원두</td>
				</tr>
			<tr>
				<td>2</td>
				<td>화이트원두</td>
			</tr>
			<tr>
				<td>3</td>
				<td>종이컵</td>
			</tr>
			<tr>
				<td>4</td>
				<td>플라스틱컵</td>
			</tr>
			<tr>
				<td>5</td>
				<td>빨대</td>
			</tr>
			<tr>
				<td>1</td>
				<td>블랙원두</td>
				</tr>
			<tr>
				<td>2</td>
				<td>화이트원두</td>
			</tr>
			<tr>
				<td>3</td>
				<td>종이컵</td>
			</tr>
			<tr>
				<td>4</td>
				<td>플라스틱컵</td>
			</tr>
			<tr>
				<td>5</td>
				<td>빨대</td>
			</tr>
			</tbody>
		</table>
	</div>
	<div class="partner">
		<table class='table'>
			<tr>
				<td>거래처명</td>
				<td>비트캠프</td>
				</tr>
			<tr>
				<td>거래처번호</td>
				<td>5</td>
			</tr>
			<tr>
				<td>담당자</td>
				<td>박보검</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>010-1234-5678</td>
			</tr>
		</table>
	</div>
	</div>
	<div class="purchase">
		 <table class="table table-hover table-active">
      	<thead>
            <tr class="table-active">
               <td>상품번호</td>
               <td>제품명</td>
               <td>발주가격</td>
               <td>발주수량</td>
               <td>발주</td>
               <td>비고</td>
            </tr>
            </thead>
            <tbody>
              <tr>
               <td>2-1</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn btn-info btn-sm' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
             <tr>
               <td>2-2</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn btn-info btn-sm' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-3</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn btn-info btn-sm' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-4</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn btn-info btn-sm' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-5</td>
               <td>블랙원두</td>
               <td>10000원</td>
               <td><input type="text" class="text"/>개</td>
               <td><input type="submit" class='btn btn-info btn-sm' value="발주"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
         </tbody>
      </table>
	</div>
	<div class="purchase_ok">
		 <table class="table table-hover table-active">
      	<thead>
            <tr class="table-active">
            	<td>발주번호</td>
                <td>상품번호</td>
                <td>제품명</td>
                <td>발주수량</td>
                <td>발주가격</td>
                <td>합계금액</td>
                <td>발주날짜</td>
                <td>발주상태</td>
            </tr>
            </thead>
            <tbody>
	             <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	            </tr>
	            <tr>
	             	<td>2</td>
	               	<td>2-2</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
               	 
	            </tr>
	            <tr>
	             	<td>3</td>
	               	<td>2-3</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	               </tr>
	            <tr>
	             	<td>4</td>
	               	<td>2-4</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                 </tr>
	            <tr>
	             	<td>5</td>
	               	<td>2-5</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td>5개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	              </tr>
         </tbody>
      </table>
	</div>
</div>
</body>
</html>