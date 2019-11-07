<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel="stylesheet" href="resources/css/style_sub2.css">
	<link rel="stylesheet" href="resources/css/layout.css">
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/uc.lib.min.js"></script>
	<script src="resources/js/uc.plugin.min.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/common.js"></script>
	
	<!-- /* Bootstrap 3.3.2 */ -->
	
	<link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap-theme.min.css">
	<script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
										function delete_ok(c_no,s_no) {
										
										if(confirm("댓글을 삭제하시겠습니까?")){
											location.href='s_comment_dele.do?c_no='+c_no+'&s_no='+s_no;
										}
										} 
									</script>
</head>

<body>

<%@ include file="../../resources/include/header.jsp" %>


	<div class="content_wrap">
		<div class="gongyu">
			<!--sub_top-->
			<div class="sub_top top4">
				<b class="title">공유방</b>
				<div>
					<span>나눔하고 싶은 가구 또는 필요한 가구가 있다면 가전가구나눔을 이용! </span>
				</div>
			</div>
		</div>

		<!--tab_menu-->
		<div class="tab_menu menu3">
			<ul>
				<li><a href="<%=request.getContextPath()%>/con4_1.do">실생활 팁</a></li>
				<li><a href="<%=request.getContextPath()%>/con4_2.do">인테리어 팁</a></li>
				<li class="on"><a href="<%=request.getContextPath()%>/con4_3.do">가전가구 나눔</a></li>
			</ul>
		</div>

		<div class="is-frame-md">
			<div class="is-title-wrap is-txt-center">
				<h2>가전가구 나눔</h2>
				<p>낭비는 줄고 나눔은 늘고! </p>
			</div>

			<div class="yellow-bg2">
				<div class="is-col-xs6 is-align-mid">
					<h4>무료나눔정보</h4>
				</div>
				<div class="is-col-xs6 is-align-mid is-txt-right">
					<a href="<%=request.getContextPath()%>/share_room_upload.do" class="is-btn-brown">나눔 등록 하기</a>
				</div>
			</div>

			<div class="is-mg-y_20 is-pd-b_20" style="border: 2px solid #eaeaea;">
				<ul class="columns-xs2 columns-lg4">
					<li class="is-col is-align-mid" style="width: 231.5px;">
						<div class="is-icon">
							<img src="resources/images/sub_2/gg/1.png" />
						</div>
						<p>나눔등록하기를 누른다</p>
					</li>
					<li class="is-col is-align-mid" style="width: 231.5px;">
						<div class="is-icon">
							<img src="resources/images/sub_2/gg/2.png" />
						</div>
						<p>직거래 유무/ 지역 등 옵션을 선택한다</p>
					</li>
					<li class="is-col is-align-mid" style="width: 231.5px;">
						<div class="is-icon">
							<img src="resources/images/sub_2/gg/3.png" />
						</div>
						<p>3장이상 사진 첨부후 글올리기</p>
					</li>
					<li class="is-col is-align-mid" style="width: 231.5px;">
						<div class="is-icon">
							<img src="resources/images/sub_2/gg/4.png" />
						</div>
						<p>거래가 성사되면 나눔완료!</p>
					</li>
				</ul>
			</div>

			<div data-uc-table>
				<c:set var="dto" value="${cont }"/>
				<div style="margin: 10px; border:1px solid; padding:10px;"> <!-- inbox -->
					<div class="row" > <!-- tit-box -->
						<div class="col-xs-8 col-sm-9"> <!-- fl -->
							<table role="presentation" cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr valign="top">
										<td>
											<span style="font-weight: bold;">${dto.getS_title() }</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div  class="col-xs-4 col-sm-3" align="right"> <!-- fr -->
							<table role="presentation" cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr>
										<td>
											<span ><font size="1em">${dto.getS_date().substring(0,16) }</font></span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div style="border-top:1px dashed; margin-top: 2px;"></div>
					<div><!-- etc-box -->
						<div class="row" > <!-- tit-box -->
						<div class="col-xs-8 col-sm-9" style="margin-top: 20px;"> <!-- fl -->
							<table role="presentation" cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr valign="top">
										<td>
											<span style="font-weight: bold;">${dto.getS_writer() }</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						</div>
						<div style="padding-left: 43px; padding-right: 43px; margin-top: 30px"><!-- 내용 -->
							<div>${dto.getS_cont() }</div>
						</div>
						<div style="padding-left: 43px; padding-right: 43px; margin-top: 30px"><!-- 내용 -->
							<div>
								<c:if test="${empty dto }">
									${dto.getS_memo() }
								</c:if>
								<c:if test="${!empty dto }">
									&nbsp;
								</c:if>
							</div>
						</div>
						<table  cellspacing="0" cellpadding="0" border="0" style="margin-top: 20px;">
							<tbody>
								<tr>
									<td width="1500">
										&nbsp;
									</td>
									<td width="300" align="right"><ins><font size="1em">이 작성자의 게시글 더보기</font></ins></td>
								</tr>
							</tbody>
						</table>
						<div style="height: 15px;">&nbsp;</div>
					</div>
					<div><!-- replay box -->
						<div>
							<table  cellspacing="0" cellpadding="0" border="0" style="margin-top: 20px;">
								<tbody>
									<tr>
										<td>
											<span>댓글</span>
											<span>0</span>
										</td>
										<td>
										<!-- 	<span></span> -->
											<span>&nbsp;|&nbsp;</span>
											<!-- <span></span> -->
										</td>
										<td>								
											<span>조회수</span>
											<span>${dto.getS_hit() }</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div style="display: block; padding-left: 43px; padding-right: 43px; padding-bottom: 30px; padding-top: 30px; background-color: #cccccc;"><!-- 댓글 -->
						<%-- <c:set var="list" value="${comment }"/>
						<c:if test="${!empty list }">
						<c:forEach items="${list }" var="c_dto">
						<ul>
							<li>
								<div >
									<div class="row">
										<div class="col-xs-8 col-sm-9">
											<table border="0">
												<tbody>
													<tr>
														<td>
															<span style="font-weight: bold;">${c_dto.getC_id() }&nbsp;</span>
														</td>
														<td>
															<span><font size="1em">${c_dto.getC_date().substring(0,16) }</font></span>
															<span>┗답글</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="col-xs-8 col-sm-3" align="right">
											<table border="0">
												<tbody>
													<tr>
														<td>														
															<a style="font-weight: lighter;">수정</a>
															<span>&nbsp;|&nbsp;</span>
															<a onclick="delete_ok(${c_dto.getC_no()},${c_dto.getS_no()});" style="font-weight: lighter; ">삭제</a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<p>
										<span>${c_dto.getC_cont() }</span>
									</p>
								</div>
								<div style="border-top:1px dashed; margin-top: 2px;"></div>
							</li>
						</ul>
						</c:forEach>
						
						</c:if> --%>
						<form id="comments" action="<%=request.getContextPath()%>/s_comment.do">
							<input type="hidden" value="${dto.getS_no() }" name="s_no">
							<table  cellspacing="0" cellpadding="0" border="1">
								<tbody>
									<tr >
										<td style="background-color: #ffffff;">
											<div >
												<textarea class="autosize" name="c_cont" maxlength="4000" rows="2" cols="100%" style="overflow: hidden auto; line-height: 14px; height: 34px; resize: none; border:0;" ></textarea>
											</div>
										</td>
										<td valign="bottom">
											<div >
												<input id="c_ok" type="submit" value="등록" style="background-color: #ffffff; border:0; width: 60pt; height: 40pt;" >
												<!-- <button style="width: 84; height: 61;">등록</button> -->
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
				<script>
					$("textarea.autosize").on('keydown keyup', function () {
						var limit=468;
						if(limit>$(this).prop('scrollHeight')){
								$(this).height(1).height( $(this).prop('scrollHeight')+12 );
						} 
					});
				</script>
		
				<!-- <div data-uc-colgroup>
					<div class="is-col-md4 is-offset-md8">
						<div data-uc-colgroup="row-xs">
							<div class="is-col-xs3">
								<div class="is-input-field">
									<select>
										<option>제목</option>
										<option>작성자</option>
									</select>
								</div>
							</div>
							<div class="is-col-xs9">
								<div class="is-input-field">
									<input type="text" name="" id="" value="" />
									<a href="" style="position: absolute; top: 10px; right: 10px;"><img
											src="resources/images/sub_2/search.png" alt=""></a>
								</div>
							</div>
						</div>
					</div>
				</div> -->
	

		<%-- <div class="container" role="main">

			<h2>board Content</h2>

			

			<div class="bg-white rounded shadow-sm">

				<div class="board_title" value="${dto.getS_title()}"></div>

				<div class="board_info_box">

					<span class="board_author"><c:out value="${dto.getS_writer()}"/>,</span>
					<span class="board_date"><c:out value="${dto.getS_date()}"/></span>

				</div>

				<div class="board_content">${dto.getS_cont}</div>

				<div class="board_tag">TAG :</div>

			</div>

			

			<div style="margin-top : 20px">

				<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

			</div>

		</div> --%>
	


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