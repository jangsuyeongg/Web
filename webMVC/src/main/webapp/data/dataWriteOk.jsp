<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${cnt>0 }">
	<script>
		location.href="/webMVC/data/list.do"
	</script>
</c:if>
<c:if test="${cnt<=0 }">
	<script>
		alert("자료실 업로드 실패하였습니다.");
		history.back();
	</script>
</c:if>