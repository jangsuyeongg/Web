<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="   crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	body{
		margin: 0;
	}
	.container{
		max-width: 1400px;
		display: flex;
	    justify-content: center;
	    margin:0 auto;
	    background-color:rgb(245, 240, 233);
	}
	#memo{
		width: 542px;
		height:150px;
		background-color: rgb(245, 240, 233);
	}
	.form{
		background-color:rgb(245, 240, 233);
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
		color:rgb(30, 57, 50);
		
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
	  background-color:rgb(30, 57, 50);
      width: 80px;
      height:30px;
      border-radius: 3px;
      transition-duration: 0.3s;
     
      color:white;
      opacity: 0.8;
	}
	#submit>input:hover{
		cursor: pointer;
	}
	#filebutton{
		color:rgb(30, 57, 50);
		font-weight:bold;
	}
	#filebutton:hover{
		cursor: pointer;
	}
	
	#filename {
		display: none;
	}
	
	#file {
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	    width: 250px;
	}
	textarea{
		resize:none;
	}
</style>
<script>
	
	$(() => {
		$("input[type='file']").change(function(event){
			var imageFile = event.target.files[0];
			console.log(imageFile.name);
			var reader = new FileReader();
			reader.onload = (e) => {
				$("#img").children().attr("src", e.target.result);
				$("#uploaded").html(imageFile.name);
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
			<div id="reg">????????????</div><br/><br/>
			<div class="row">???  ???</div>
				<select class="form">
				    <option value="">?????????</option>
				    <option value="coffee">coffee</option>
				    <option>beverage</option>
				    <option>ice-cream</option>
			    </select>
			    <select class="form">
				    <option value="">?????????</option>
				    <option value="coffee">coffee</option>
				    <option>beverage</option>
				    <option>ice-cream</option>
			    </select>
			    <select class="form">
				    <option value="">?????????</option>
				    <option value="coffee">coffee</option>
				    <option>beverage</option>
				    <option>ice-cream</option>
			    </select><br/><br/>
			
			<div class="row">?????????</div>
				<input type="text" class="form"/><br/>
			<div class="row">?????????(??????)</div>	
				<input type="text" class="form"/><br/>
			<div class="row">??????</div>	
				<input type="text" class="form"/>	
				<div><br/>
				<div class="row">????????????</div>
					<div class="Nutrition">
						<div class="nutname">?????????(ml)</div><input type="text" class="form"/><br/>
						<div class="nutname">??? ???(kcal)</div><input type="text" class="form"/><br/>
						<div class="nutname">??? ???(g) </div><input type="text" class="form"/><br/>
						<div class="nutname">?????????(mg) </div><input type="text" class="form"/><br/>
						<div class="nutname">?????????(g) </div><input type="text" class="form"/><br/>
						<div class="nutname">????????????(g) </div><input type="text" class="form"/><br/>
						<div class="nutname">?????????(mg) </div><input type="text" class="form"/><br/><br/>
					</div>	
			<div class="row will-be-moved">????????????</div>
				<textarea id="memo" placeholder="???????????? ???????????? ???"></textarea><br/>
			</div><br/>
			<div id="submit"><input type="submit" value="????????????"/></div>
			<div id="img"><img src="img/menu_image.png"/>
				 <div id="file"><label for="filename" id="filebutton">????????????</label><div id="uploaded"></div><input type="file" name="filename" id="filename" /></div>
			</div>
	</div>	
	</div>
</body>
</html>