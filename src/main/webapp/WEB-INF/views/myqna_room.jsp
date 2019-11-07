<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!doctype html>
<html>

<head>
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
</head>

<body>

<%@ include file="../../resources/include/header.jsp" %>

	<div class="content_wrap">

		<div class="is-frame-md">
			<div class="is-title-wrap is-txt-center">
				<h2>고객 센터</h2>
			</div>

			<div class="custom-top-list is-mg-y_20 is-pd-b_20" data-uc-colgroup="row-lg">
				<ul class="columns-xs1 columns-lg3">
					<li class="is-col is-align-mid is-mg-b_15 width323">
						<a href="<%=request.getContextPath() %>/customer_room.do">
							<div class="is-col-inner">
								<div class="is-icon">
									<img src="resources/images/sub_3/customer-center/11.png" />
								</div>
								<h3>NOTICE</h3>
								<p>청춘다방의 공지사항을<br> 한눈에 확인할 수 있어요</p>
							</div>
						</a>
					</li>
					<li class="is-col is-align-mid is-mg-b_15 width323">
						<a href="<%=request.getContextPath()%>/qna_room.do">
							<div class="is-col-inner">
								<div class="is-icon">
									<img src="resources/images/sub_3/customer-center/22.png" />
								</div>
								<h3>1 : 1 문의</h3>
								<p>궁금한 점을 1:1로<br> 물어보는 공간이에요</p>
							</div>
						</a>
					</li>
					<li class="is-col is-align-mid is-mg-b_15 width323">
						<a href="<%=request.getContextPath()%>/customer_room.do">
							<div class="is-col-inner">
								<div class="is-icon">
									<img src="resources/images/sub_3/customer-center/33.png" />
								</div>
								<h3>FAQ</h3>
								<p>간편하게 궁금증을 해결하는<br> 공간으로 쉽게 빠르고 확인 가능!</p>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<ul class="is-qna-nav">
			<li><a href="<%=request.getContextPath() %>/qna_room.do">문의하기</a></li>
			<li class="is-active"><a href="<%=request.getContextPath() %>/myqna_room.do">나의 문의 내역</a></li>
		</ul>
		<form method="get" action="<%=request.getContextPath() %>/no1.do">
		<div class="is-frame-md">
			<div data-uc-table class="is-scroll-x">
					<table class="is-table-hor">
						<colgroup>
							<col width="5%">
							<col width="10%">
							<col width="15%">
							<col width="10%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>문의 유형</th>
								<th>제목</th>
								<th>문의일시</th>
								<th>답변여부</th>								
							</tr>
						</thead>
					<tbody id="noticeCollapse" data-uc-collapse>
						<c:set var="list" value="${List }"></c:set>
						<c:if test="${!empty list }">
							<c:forEach items="${list }" var="i">					
							<tr>
								<td><a href="<%=request.getContextPath()%>/myqna_content.do?no=${i.getMyqna_no() }">${i.getMyqna_no() }</a></td>
								<td>${i.getMyqna_qtype() }</td>
								<td>${i.getMyqna_title() }</td>
								<td> ${i.getMyqna_regdate().substring(0,16) } </td> <!-- 문의날짜 -->
								<td> ${i.getMyqna_recomplete() } </td> <!-- 답변완료 -->
							</tr>
							</c:forEach>
						</c:if>					
					</tbody>					
							<c:if test="${empty list }">
								<tr>
									<td colspan="5" align="center">
										<h3>검색된 레코드가 없습니다.</h3>
									</td>
								</tr>
							</c:if>			
					</table>
				</div>
				
					<br>
	<!-- 				<div align="right">
					<input type="submit" value="선택 삭제" > -->
					</div>
				
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