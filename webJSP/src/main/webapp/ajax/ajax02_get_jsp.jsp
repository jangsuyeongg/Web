<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
   $(()=>{
      $('button').click(()=>{//클릭이벤트 발생
         //               접속할파일명 ,    콜백함수                  결과가 담김 ,처리상태가 담김(success,error)
         $.get('ajax_test_jsp.jsp?firstName=홍&lastName=길동',function(result,status){
            if(status=='success'){
               $('div').html(result);
               console.log(result);
            }else if(status=='error'){
               $('div').html("jsp파일에 접속실패하였습니다");
            }
         });
      });
   });
</script>
</head>
<body>
<button>클릭하세요</button>
<div style="background-color:pink;"></div>
</body>
</html>