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
		max-width: 1400px;
		margin:0 auto;
		overflow:auto;
		background-color:rgb(245, 240, 233);
	}
	.search{
		width:400px;
		height:586px;
		float:left;
		margin-left:10px;
		margin-right:10px;
	}
	.partner{
		width:400px;
		float:left;
		margin:10px; 
	}
	.search_partner{
		width:400px;
	}
	.purchase{
		width: 965px;
		height:400px;
		display:flex;
		margin:10px; 
		
	}
	.purchase_ok{
		width: 965px;
		height:400px;
		display:flex;
		margin:10px; 
		
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
		margin:10px;
	}
	#btn1,#btn2{
		background-color: rgb(30, 57, 50);
	    width: 80px;
	    height: 35px;
	    border-radius: 3px;
	    font-size: 0.6em;
	    color: white;
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
<script>
$(()=>{
	$('#myinput').keyup(function(){
		var data = $(this).val().toLowerCase();
		
		$('#searchList>tr').filter(function(){
			var trData = $(this).text().toLowerCase(); //tr??? ?????? ????????? ?????????.
			var idx = trData.indexOf(data);// ????????? -1, ????????? 0~??????
			//				true:?????????, false:??????
			$(this).toggle(idx>-1);
		});
	});
	$(".btn-info").click(function(){
		alert('???????????? ???????????????.');
	});
	
});

</script>
</head>
<body>
<div class="main">
	<div id="name">????????????  <a href="/suyeong/leaf/purchase_Modify.jsp"><input type="submit" value="????????????" id="btn1"/></a>
				<input type="submit" value="????????????" id="btn2"/></div>
	<div class="search_partner">
	<div class="search">
		<input type='text' id='myinput' placeholder='???????????? ????????? ???????????????.' class='form-control'/>
		<table class='table table-hover table-active'>
			<thead>
			<tr>
				<td>????????????</td>
				<td>?????????</td>
			</tr>
			</thead>
			<tbody id='searchList'>	
			<tr>
				<td>1</td>
				<td>????????????</td>
				</tr>
			<tr>
				<td>2</td>
				<td>???????????????</td>
			</tr>
			<tr>
				<td>3</td>
				<td>?????????</td>
			</tr>
			<tr>
				<td>4</td>
				<td>???????????????</td>
			</tr>
			<tr>
				<td>5</td>
				<td>??????</td>
			</tr>
			<tr>
				<td>1</td>
				<td>????????????</td>
				</tr>
			<tr>
				<td>2</td>
				<td>???????????????</td>
			</tr>
			<tr>
				<td>3</td>
				<td>?????????</td>
			</tr>
			<tr>
				<td>4</td>
				<td>???????????????</td>
			</tr>
			<tr>
				<td>5</td>
				<td>??????</td>
			</tr>
			<tr>
				<td>1</td>
				<td>????????????</td>
				</tr>
			<tr>
				<td>2</td>
				<td>???????????????</td>
			</tr>
			<tr>
				<td>3</td>
				<td>?????????</td>
			</tr>
			<tr>
				<td>4</td>
				<td>???????????????</td>
			</tr>
			<tr>
				<td>5</td>
				<td>??????</td>
			</tr>
			</tbody>
		</table>
	</div>
	<div class="partner">
		<table class='table'>
			<tr>
				<td>????????????</td>
				<td>????????????</td>
				</tr>
			<tr>
				<td>???????????????</td>
				<td>5</td>
			</tr>
			<tr>
				<td>?????????</td>
				<td>?????????</td>
			</tr>
			<tr>
				<td>?????????</td>
				<td>010-1234-5678</td>
			</tr>
		</table>
	</div>
	</div>
	<div class="purchase">
		 <table class="table table-hover table-active">
      	<thead>
            <tr class="table-active">
               <td>????????????</td>
               <td>?????????</td>
               <td>????????????</td>
               <td>????????????</td>
               <td>??????</td>
               <td>??????</td>
            </tr>
            </thead>
            <tbody>
              <tr>
               <td>2-1</td>
               <td>????????????</td>
               <td>10000???</td>
               <td><input type="text" class="text"/>???</td>
               <td><input type="submit" class='btn3' value="??????"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
             <tr>
               <td>2-2</td>
               <td>????????????</td>
               <td>10000???</td>
               <td><input type="text" class="text"/>???</td>
               <td><input type="submit" class='btn3' value="??????"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-3</td>
               <td>????????????</td>
               <td>10000???</td>
               <td><input type="text" class="text"/>???</td>
               <td><input type="submit" class='btn3' value="??????"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-4</td>
               <td>????????????</td>
               <td>10000???</td>
               <td><input type="text" class="text"/>???</td>
               <td><input type="submit" class='btn3' value="??????"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
            <tr>
               <td>2-5</td>
               <td>????????????</td>
               <td>10000???</td>
               <td><input type="text" class="text"/>???</td>
               <td><input type="submit" class='btn3' value="??????"/></td>
               <td><input type="text" class="text"/></td>
            </tr>
         </tbody>
      </table>
	</div>
	<div class="purchase_ok">
		 <table class="table table-hover table-active">
      	<thead>
            <tr class="table-active">
            	<td>????????????</td>
                <td>????????????</td>
                <td>?????????</td>
                <td>????????????</td>
                <td>????????????</td>
                <td>????????????</td>
                <td>????????????</td>
                <td>????????????</td>
            </tr>
            </thead>
            <tbody>
	             <tr>
	             	<td>1</td>
	               	<td>2-1</td>
	                <td>????????????</td>
	                <td>10000???</td>
	                <td>5???</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>??????</td>
	            </tr>
	            <tr>
	             	<td>2</td>
	               	<td>2-2</td>
	                <td>????????????</td>
	                <td>10000???</td>
	                <td>5???</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>??????</td>
               	 
	            </tr>
	            <tr>
	             	<td>3</td>
	               	<td>2-3</td>
	                <td>????????????</td>
	                <td>10000???</td>
	                <td>5???</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>??????</td>
	               </tr>
	            <tr>
	             	<td>4</td>
	               	<td>2-4</td>
	                <td>????????????</td>
	                <td>10000???</td>
	                <td>5???</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>??????</td>
	                 </tr>
	            <tr>
	             	<td>5</td>
	               	<td>2-5</td>
	                <td>????????????</td>
	                <td>10000???</td>
	                <td>5???</td>
	                <td>50000</td>
               	    <td>2021-09-19</td>
               	    <td>??????</td>
	              </tr>
         </tbody>
      </table>
	</div>
</div>
</body>
</html>