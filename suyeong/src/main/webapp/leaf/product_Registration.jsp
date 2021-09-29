<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="   crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	.container{
		border:1px solid gray; 
		max-width: 1400px;
		display: flex;
	    justify-content: center;
	    margin:0 auto;
	}
	#memo{
		width: 542px;
		height:150px;
	}
	.row{
		width:100px;
		display: inline-block;
	}
	.Nutrition{
		position: relative;
	    margin-left: 105px;
	    top: -20px;
	}
	img{
		width:200px;
		height:200px;
		border-radius:100%;
		position: relative;
		top: -20px;
    	left: 24px;
	}
	#img{
		position: relative;
		width: 300px;
		height:300px;
	    left: 400px;
	    top: -517px;
	}
	#reg, #submit{
		text-align:center;
		font-size:2em;
		font-weight:bold;
	}
	.nutname{
		width:100px;
		float:left;
	}
	.will-be-moved {
		top: -143px;
    	position: relative;
	}
	input{
		border:none;
		border-right:0px; 
		border-top:0px; 
		border-left:0px; 
		border-bottom:1px solid;
		outline:none;
	}
	.inputbox{
		margin:100px;
	}
	#submit>input{
	  background-color:white;
      width: 100px;
      height:50px;
      border-radius: 10px;
      transition-duration: 0.3s;
      border:1px solid rgb(0, 163, 239);
      color:rgb(0, 163, 239);
      opacity: 0.8;
	}
</style>

<script>
	
	$(() => {
		$("input[type='file']").change(function(event){
			var imageFile = event.target.files[0];
			
			var reader = new FileReader();
			reader.onload = (e) => {
				$("#img").children().attr("src", e.target.result);
			};
			reader.readAsDataURL(imageFile);
		});
	});
	
	
	
</script>

</head>
<meta charset="UTF-8">

<body>
	<div class="container">
		
		<div class="inputbox">
			<div id="reg">등록하기</div><br/><br/>
			<div class="row">분  류</div>
				<select name="대분류">
				    <option value="">대분류</option>
				    <option value="coffee">coffee</option>
				    <option>beverage</option>
				    <option>ice-cream</option>
			    </select>
			    <select name="대분류">
				    <option value="">중분류</option>
				    <option value="coffee">coffee</option>
				    <option>beverage</option>
				    <option>ice-cream</option>
			    </select>
			    <select name="대분류">
				    <option value="">소분류</option>
				    <option value="coffee">coffee</option>
				    <option>beverage</option>
				    <option>ice-cream</option>
			    </select><br/><br/>
			
			<div class="row">제품명</div>
				<input type="text"/><br/>
			<div class="row">제품명(영어)</div>	
				<input type="text"/><br/>
			<div class="row">가격</div>	
				<input type="text"/>	
				<div><br/>
				<div class="row">영양정보</div>
					<div class="Nutrition">
						<div class="nutname">제공량(ml)</div><input type="text"/><br/>
						<div class="nutname">열 량(kcal)</div><input type="text"/><br/>
						<div class="nutname">당 류(g) </div><input type="text"/><br/>
						<div class="nutname">나트륨(mg) </div><input type="text"/><br/>
						<div class="nutname">단백질(g) </div><input type="text"/><br/>
						<div class="nutname">포화지방(g) </div><input type="text"/><br/>
						<div class="nutname">카페인(mg) </div><input type="text"/><br/><br/>
					</div>	
			<div class="row will-be-moved">제품설명</div>
				<textarea id="memo" placeholder="글내용을 입력하는 곳"></textarea><br/>
					
			</div><br/>
			<div id="submit"><input type="submit" value="등록하기"/></div>
			<div id="img"><img src="img/profile.png"/>
				 <input type="file" name="filename" id="filename" /></div>
			</div>
	</div>	
</body>
</html>