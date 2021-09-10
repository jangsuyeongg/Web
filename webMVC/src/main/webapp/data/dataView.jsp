<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="   crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
	$(()=>{
		$('#down').on('click',function(){
			var url = "/webMVC/data/downCount.do";
			var params = "num=${dataVo.num}";
			$.ajax({
				url : url,
				data : params,
				success:function(result){
					var cnt = result.split("downCount")
					$("#cnt").text(cnt[1]);
				}, error:function(){
					console.log("download증가에러...")
				}
			});
		});
	});
	//삭제여부 확인
	function delChk(){
		if(confirm("글을 삭제하시겠습니까?")){
			location.href="/webMVC/data/dataDel.do?num=${dataVo.num}";
		}
	}
</script>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글내용보기</h1>
	<ul>
		<li>번호 : ${dataVo.num} </li>
		<li>글쓴이 : ${dataVo.userid} </li>
		<li>등록일 : ${dataVo.writedate}, 조회수 : ${dataVo.hit }, 다운로드횟수 : <span id='cnt'>${dataVo.downcount }</span></li>
		<li>첨부파일 : <a href="/webMVC/upload/${dataVo.filename}" download><span id='down'>${dataVo.filename }</span></a></li>
		<li>제목 : ${dataVo.title}</li>
		<li>
			<hr/>
			${dataVo.content}
		</li>
		<c:if test="${userid!=null && userid!='' }">
			<li>
				<a href="/webMVC/data/dataEdit.do?num=${dataVo.num}">수정</a>
				<a href="javascript:delChk()">삭제</a>
				
			</li>
		</c:if>
	</ul>
</body>
</html>