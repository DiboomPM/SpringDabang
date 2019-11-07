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

	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">	<link rel="stylesheet" href="resources/css/uc.min.css">
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

		<div>
		<%@ include file="../../resources/include/header.jsp"%>
	</div>


	<div class="content_wrap">

		<div class="is-frame-md">
			<div class="is-title-wrap is-txt-center">
				<h2>고객 센터</h2>
			</div>

			<div class="custom-top-list is-mg-y_20 is-pd-b_20" data-uc-colgroup="row-lg">
				<ul class="columns-xs1 columns-lg3">
					<li class="is-col is-align-mid is-mg-b_15 width323">
						<a href="<%=request.getContextPath()%>/customer_room.do">
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

			<ul id="customerCollapse" data-uc-collapse="">
				<li>
					<div class="is-collapse-head">
						<div class="is-collapse-inner">
							<a href="#collapse1" data-uc-click="collapse">
								<b>Q.</b> 청춘다방은 어떤 서비스인가요?
							</a>
						</div>
					</div>
					<div id="collapse1" class="is-collapse-body is-show" data-parent="#customerCollapse">
						<div class="is-collapse-inner">
							<p><b>A.</b><br> ▶ 집에 대한 모든 정보 <br>
                                매물, 교통, 편의시설 뿐만 아니라 우리아이가 입학하게 될 학군 정보 까지! 집 선택에 필요한 모든 정보를 다방에서 한눈에 확인 할 수 있어요.
			<br>
			<br>
                                ▶ 꼼꼼해진 맞춤검색 <br>
                                내가 원하는 조건의 방만 쏙쏙 확인할 수 있도록! 맞춤검색 필터가 더욱 세분화 되었습니다.
			<br>
			<br>
                                ▶ 다방면스코어  <br>
                                매물 빅데이터를 기반으로 한 지역 평균 대비 가성비 분석! 교통, 편의시설, 옵션, 관리비, 가격까지 다방면으로 비교하고 선택하세요.
			<br>
			<br>
                                ▶ 똑똑하게 방 구할 땐, 공유방!  <br>
                                청춘다방 사용자들을 위한 필수팁들을 한눈에! 공유방에서 합리적인 이용법을 만나보세요.
			<br>
			<br>
                                ▶ 맘에 드는 방 찜하고 예약! <br>
                                마음에 들어서 찜해놓은 그 방을 계약하고 싶다면 예약하기를 활용해주세요.  
                            </p>
						</div>
					</div>
				</li>
				<li>
					<div class="is-collapse-head">
						<div class="is-collapse-inner">
							<a href="#collapse2" data-uc-click="collapse">
								<b>Q.</b> 회원가입을 하면 어떤 점이 좋나요?
						  </a>
						</div>
					</div>
					<div id="collapse2" class="is-collapse-body" data-parent="#customerCollapse">
						<div class="is-collapse-inner">
							<p><b>A.</b> 회원가입 후 로그인을 하시면
			<br>
                                ▶ ‘찜한방'의 내용을 안전하게 저장!<br>
                                원룸∙투룸∙오피스텔 등 다양한 전∙월세 매물을 살펴보는 과정에서 매물을 조회하고 찜한 내역이 쌓이는 '찜한방'의 내용을 확인할 수 있습니다.
			<br>
			<br>
                                ▶ 방올리기!<br>
                                방을 내놓고 싶을 땐 로그인후 방을 올릴 수 있습니다.
                                또한 마이페이지에서 내가 올린 방 수정하기도 가능합니다.
                             </p>
						</div>
					</div>
				</li>
				<li>
					<div class="is-collapse-head">
						<div class="is-collapse-inner">
							<a href="#collapse3" data-uc-click="collapse">
								<b>Q.</b> 방에 등록된 방은 믿을 수 있나요?
						  </a>
						</div>
					</div>
					<div id="collapse3" class="is-collapse-body" data-parent="#customerCollapse">
						<div class="is-collapse-inner">
							<p><b>A.</b> 청춘다방은 사용자 분들에게 믿을 수 있는 정보를 제공하는 것을 최우선으로 합니다.
			<br>
                                ▶ 매물의 정확한 위치를 지도 위에 표시하고, 매물 근처의 편의시설 등을 한 눈에 볼 수 있도록 하여 발품을 팔지 않고도 주변 환경까지 확인하실 수 있도록 했습니다.
			<br>
			<br>
                                ▶ 또한 지속적인 허위매물 관리를 통해 사용자 분들이 허위정보로 인한 불편함을 느끼지 않도록 노력하고 있습니다. </p>
						</div>
					</div>
				</li>
			</ul>

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