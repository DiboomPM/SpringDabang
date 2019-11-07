<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>방보기</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
	<link rel="stylesheet" href="resources/css/uc.min.css">
	<link rel="stylesheet" href="resources/css/basic.css">
	<link rel="stylesheet" href="resources/css/slick.css">
	<link rel="stylesheet" href="resources/css/slick-theme.css">
	<link rel="stylesheet" href="resources/css/style_sub3.css">
	<link rel="stylesheet" href="resources/css/layout.css">

	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/uc.lib.min.js"></script>
	<script src="resources/js/uc.plugin.min.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/common.js"></script>
	
<title>수정값</title>
</head>
<body>

<%@ include file="../../resources/include/header.jsp" %>

	<div class="content_wrap">

		<div class="is-frame-md">
			<div class="is-title-wrap is-txt-center">
				<h2>수정 폼 페이지</h2>
			</div>	
	</div>
		
	<div align="center">
		
	<form method="post" action="<%=request.getContextPath() %>/myqna_edit_ok.do">
		<table border="2"  width="400" cellspacing="0">
			<c:set var="dto" value="${modify}"></c:set>
			<c:if test="${!empty dto }">
		<tr>
			<th>번호</th>
			<td><input name="myqna_no2" value="${dto.getMyqna_no()}" readonly></td>
		</tr>		
		<tr>
			<th>글제목</th>
			<td><input name="myqna_title" value="${dto.getMyqna_title()}" readonly></td>
		</tr>
		<tr>	
			<th>내용</th>
			<td>
				<textarea rows="8" cols="30" name="myqna_cont">${dto.getMyqna_cont()}</textarea>
			</td>
		</tr>			
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정완료">
				<input type="reset" value="취소">
				<input type="button" value="돌아가기" onclick="location.href='myqna_room.do'">
			</td>
		</tr>	
	
		 </c:if>
		</table>	
	</form>	
	</div>
			
				<div class="is-empty-xs120"></div>
		<!-- 하단 시작 -->
		<footer class="footer">
			<div class="is-frame-md is-relative">
				<div class="is-area-top">
					<ul>
						<li class=""><a href="#">회사소개</a></li>
						<li class=""><a href="#">이용약관</a></li>
						<li class=""><a href="#">개인정보 처리방침</a></li>
						<li class=""><a href="#">위치기반</a></li>
						<li class=""><a href="#">중개사 사이트 바로가기</a></li>
					</ul>
				</div>
				<div class="is-area-mid">
					<p><span>상호: </span><span>대표: </span><span>사업자등록번호: </span></p>
					<p><span>주소: </span></p>
					<p><span>팩스: </span><span>통신판매업 신고번호: </span></p>
					<p><span>서비스 이용문의: </span><span>이메일: </span><span>서비스제휴문의: </span></p>
				</div>
				<div class="is-area-bot">
					<!-- 아이콘 필요 -->
					<a href="#" class="is-btn-transparent"><img src="" alt=""></a>
					<a href="#" class="is-btn-transparent"><img src="" alt=""></a>
					<a href="#" class="is-btn-transparent"><img src="" alt=""></a>
					<a href="#" class="is-btn-transparent"><img src="" alt=""></a>
					<p class="is-copyright">Copyright .All Rights Reserved.</p>
				</div>
			</div>
		</footer>
		<!-- 하단 끝 -->

	</div>	

</body>
</html>