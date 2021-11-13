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

	.purchase_state{
		width:400px;
		border:1px solid gray; 
		float:left;
		margin-right:10px; 
		margin-top:5px;
	}

	table,td,tr{
		padding-top: 0px;
    	padding-bottom: 0px;
    	height: 0px;
    	text-align:center;
	}
	.text{
		width:100px;
	}
	#memo{
		width: 950px;
		height: 188px;
	}
	.purchase_ok{
		margin-top:20px;
		overflow:scroll;
		height: 516px;
	}
	#name{
		font-size:1.5em;
		font-weight:bold;
		margin:10px;
		line-height: 3;
	}
	.purchase_ok{
		overflow:scroll;
	}
	.btn3{
		background-color: rgb(30, 57, 50);
	    width: 56px;
    	height: 30px;
	    border-radius: 3px;
	    color: white;
	}
	textarea{
		resize:none;
	}
</style>
</head>
<body>
	<div class="container">
		<div id="name">발주수정(대기일때만 수정가능 (완료시 수정불가)) </div><br/>
		<div class="purchase_state">
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
		<div>발주메모
			<textarea class="form-control" id="memo">글 내용을 입력하는 곳</textarea>
		</div>
		<div class="purchase_ok">
			 <table class="table table-hover table-active">
	      	<tr class="table-active">
            	<td>발주번호</td>
                <td>상품번호</td>
                <td>제품명</td>
                <td>발주가격</td>
                <td>발주수량</td>
                <td>총액</td>
                <td>발주날짜</td>
                <td>발주수정날짜</td>
                <td>발주상태</td>
                <td>발주수정</td>
                <td>발주취소</td>
            </tr>
            <tbody>
	             <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>대기</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	            <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>블랙원두</td>
	                <td>10000원</td>
	                <td><input type="text" class="text"/>개</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>2021-09-19</td>
               	    <td>완료</td>
	                <td><input type="submit" class='btn3' value="수정"/></td>
               	    <td><input type="submit" class='btn3' value="취소"/></td>
	            </tr>
	         </tbody>
	      </table>
		</div>
	</div>	
</body>
</html>