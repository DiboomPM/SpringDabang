<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<li class="is-active"><a href="<%=request.getContextPath()%>/qna_room.do">문의하기</a></li>
			<li><a href="<%=request.getContextPath()%>/myqna_room.do">나의 문의 내역</a></li>
		</ul>
		<div class="is-frame-md">
			<div class="qna-wrap">
				<div>
					<h3 align="center">개인정보 수집 및 이용 안내 </h3>
				</div>
				<div data-uc-table="qna">
					<table class="is-table-ver is-qna--table_1">
						<colgroup>
							<col width="20%" />
							<col width="80%" />
						</colgroup>
						<tbody>
							<tr>
								<th>수집 항목 </th>
								<td>*[필수] 이름, 이메일, 휴대폰번호, 비밀번호 </td>
							</tr>
							<tr>
								<th>수집 및 이용 목적 </th>
								<td>고객 민원 접수, 사실 관계 확인을 위한 연락 및 통지, 처리 결과 안내 </td>
							</tr>
							<tr>
								<th>보유 및 이용기간 </th>
								<td>
									<p>-상담 접수 및 처리 후 3개월 까지</p>
									<p>-소비자 불만/분쟁 처리 후 3년(법정 보존기간)</p>
								</td>
							</tr>
						</tbody>
					</table>
					<p class="is-mg-b_15">- 문의 내용과 맞지 않는 서비스 유형을 선택하실 경우 원하는 답변을 받을 수 없거나 처리가 지연될 수 있습니다. </p>
					<p class="is-mg-b_15"><b>- 문의 내용에 대한 자세한 답변은 해당 이메일로 보내드리겠습니다.</b> </p>
					<table class="is-table-ver is-qna--table_2">
						<colgroup>
							<col width="20%" />
							<col width="80%" />
						</colgroup>
						<thead >
						<form method="post" action="<%=request.getContextPath() %>/myqna_write_ok.do">							
							<tr>
								<th>상세 항목 입력</th>
								<td></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>문의 유형 </th>
								<td>
									<div class="is-input-field">
										<label for="select_1" class="is-chk-lab"><input type="radio" id="select_1"
												name="myqna_qtype" value="방보기"><span></span>
											방보기</label>
										<label for="select_2" class="is-chk-lab"><input type="radio" id="select_2"
												name="myqna_qtype" value="방올리기"><span></span>
											방올리기</label>
										<label for="select_3" class="is-chk-lab"><input type="radio" id="select_3"
												name="myqna_qtype" value="단기 임대"><span></span>
											단기 임대</label>
										<label for="select_4" class="is-chk-lab"><input type="radio" id="select_4"
												name="myqna_qtype" value="공유방"><span></span>
											공유방</label>
									</div>
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td data-uc-form>
									<div class="is-input-field">
										<input type="text"  name="myqna_title" />
									</div>
								</td>
							</tr>
							<tr>
								<th>내용 </th>
								<td data-uc-form>
									<div class="is-input-field">
										<textarea name="myqna_cont" placeholder="내용은 최대 (한글 1,000자)까지 입력 가능합니다."></textarea>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<p style="text-align: right">
				<div align= center>
					<input type="submit" value="글쓰기" class="is-btn-yellow" >
				</form>
				
					</p>
				</div>
			</div>
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