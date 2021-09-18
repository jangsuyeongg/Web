<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="   crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
.sec3img1>img, .sec3img2>img {/*원통이미지*/
   width: 500px;
   height: 500px;
}

.sec3img1>img:hover, .sec3img2>img:hover {
   cursor: pointer;
   transform: scale(1.2); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
   -o-transform: scale(1.2);
   -moz-transform: scale(1.2);
   -webkit-transform: scale(1.2);
   transition: transform .35s;
   -o-transition: transform .35s;
   -moz-transition: transform .35s;
   -webkit-transition: transform .35s;
   transition: all 0.3s ease-in-out;
}

.sec3img1>img:not(:hover), .sec3img2>img:not(:hover) {
   cursor: pointer;
   transform: scale(1); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
   -o-transform: scale(1);
   -moz-transform: scale(1);
   -webkit-transform: scale(1);
   transition: transform .35s;
   -o-transition: transform .35s;
   -moz-transition: transform .35s;
   -webkit-transition: transform .35s;
   transition: all 0.3s ease-in-out;
}
</style>
</head>
<body>
         <div id="sec3-2-1">
            <div class="sec3img1">
               <img src="img/coffee3.jpg" />
            </div>
            <div class="sec3img2">
               <img src="img/coffee3.jpg" />
            </div>
         </div>
      </div>
</body>
</html>