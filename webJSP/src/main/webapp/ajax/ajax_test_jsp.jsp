<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="   crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
<%
   String firstName = request.getParameter("firstName");
   String lastName = request.getParameter("lastName");
   String tel = "010-1234-3456";
   String addr = "서울시 마포구 백범로";
%>

<h1>처리 결과</h1>
성: <%= firstName %><br/>
이름: <%= lastName %><br/>
전화번호: <%= tel %><br/>
주소: <%= addr %><br/>
</body>
</html>