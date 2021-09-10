<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- session 지우기 -->

<%
	session.invalidate();//세션 무효.. 초기화?
	response.sendRedirect(request.getContextPath()+"/index.jsp");
%>