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
	<link rel="stylesheet" href="resources/plugins/fonts/line-awesome.css">


	<link rel="stylesheet" href="resources/css/uc.min.css">
	<link rel="stylesheet" href="resources/css/basic.css">
	<link rel="stylesheet" href="resources/css/slick.css">
	<link rel="stylesheet" href="resources/css/slick-theme.css">
	<link rel="stylesheet" href="resources/css/style_sub1.css">
	<link rel="stylesheet" href="resources/css/layout.css">

	<script src="resources/js/jquery-3.1.1.min.js"></script>
	<script src="resources/js/uc.lib.min.js"></script>
	<script src="resources/js/uc.plugin.min.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/common.js"></script>
</head>

<body>
<!--로그인 팝업-->
<div id="loginModal" data-uc-modal class="is-fade">
	<div class="is-modal-dialog">
		<div data-uc-panel>
			<div class="is-panel-body">
				<div data-uc-colgroup="">
					<div class="is-col-lg4 is-align-mid is-txt-center sns-wrap">
						<p class="login_title">로그인</p>
					</div>
					<div class="is-col-lg4 is-align-mid">
						<form data-uc-form>
							<div class="is-input-field is-mg-b_15">
								<input type="text" id="" name="" value="" placeholder="아이디"
									   style="border-color: #777676;" />
							</div>
							<div class="is-input-field is-mg-b_30">
								<input type="text" id="" name="" value="" placeholder="비밀번호"
									   style="border-color: #777676;" />
							</div>
							<div class=" is-mg-b_15">
								<button type="submit" class="is-btn-yg1 is-mg-b_15">로그인</button>
								<a href="#joinModal" data-uc-click="modal" class="is-btn-yg2">회원가입</a>
							</div>
							<div class="is-txt-center">
								<a href="" class="is-txt-link">ID찾기</a>
								<a href="" class="is-txt-link">비밀번호 찾기</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

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
				<li class="on"><a href="<%=request.getContextPath()%>/con4_1.do">실생활 팁</a></li>
				<li><a href="<%=request.getContextPath()%>/con4_2.do">인테리어 팁</a></li>
				<li><a href="<%=request.getContextPath()%>/share_room.do">가전가구 나눔</a></li>
			</ul>
		</div>

		<section class="section1">
			<div class="is-frame-md">

				<div class="tit-box is-mg-b_80">
					<h2>방 구할때 알면 좋은 실생활 TIP!</h2>
				</div>

				<div class="section1-contents is-mg-b_80" data-uc-colgroup>

					<div class="is-col-xs6 is-txt-left">
						<img src="resources/images/sub_1/section1-img1.png">
					</div>

					<div class="is-col-xs6 is-txt-left">
						<h3>기본자취용어</h3>
						<ul>

							<li><span>등기부등본</span>
								건물의 거래내역, 현 소유자 등 사실을
								기록한 등기부의 내용을 등사한 문서</li>
							<li><span>보증금</span>
								미래에 발생할 지 모르는
								채무를 대비해 맡기는 돈
							</li>

							<li><span>중도금</span>
								계약금을 한 번에 지불하지 못할 때
								잔금 지급 전가지 나누어 내는 돈
							</li>

							<li><span>공제증서</span>
								거래에 대한 중개업자의
								실수를 대비한 보험의 증서
							</li>

							<li><span>임대인</span>
								집주인, 건물주
							</li>

							<li><span>임차인</span>
								세입자, 자취생
							</li>
						</ul>
					</div>
				</div>

				<div class="section1-contents" data-uc-colgroup>
					<div class="is-col-xs6 is-push-xs6 is-txt-left">
						<img src="resources/images/sub_1/section1-img2.png">
					</div>

					<div class="is-col-xs4 is-pull-xs6 is-offset-xs2 is-txt-left">
						<ul>
							<li><span>표제부</span>
								채등기부등본의 표제부는 등기되어
								있는 해당 부동산에 대한 주소, 건물
								내역 등이 기재되어 있는 부분
							</li>
							<li><span>인감증명서</span>
								계약문서의 작성자가 본인임을
								증명하기 위한 서류
							</li>

							<li><span>대리인</span>
								주인을 대신하여 주인의 임감도장,
								주민등록증, 위임장을 갖고 계약하는
								사람
							</li>

							<li><span>묵시적갱신</span>
								계약만기 때가 되도 집주인과
								세입자간 별 다른 이야기가
								나오지 않으면 계약이 다시
								시작되는 것으로 보는것
							</li>

							<li><span>대항력</span>
								집주인이 세입자를 함부로
								내쫓을 수 없는 임차인의 권리
							</li>

							<li><span>월세</span>
								달마다 방을 이용한 대가를
								지불하는 것
							</li>

						</ul>
					</div>

				</div>
			</div>
		</section>

		<section class="section2">

			<div class="section2-title is-txt-center is-mg-b_80">
				<img src="resources/images/sub_1/i-home.png" alt="">
				<h2>자취방 체크리스트</h2>
			</div>

			<div class="is-frame-md">

				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-txt-right">
						<img src="resources/images/sub_1/section2-img1.png" alt="">
					</div>

					<div class="is-col-xs6 is-txt-left">
						<ul>
							<li><span><i class="la la-check"></i> 원룸 옵션</span>

								방에 침대, 옷장, 책상, 의자, 냉장고, 전자레인지,
								TV, 세탁기, 에어컨이 있는 경우가 풀옵션!
								-> 자취 목적에 맞게 옵션 확인

							</li>

							<li><span><i class="la la-check"></i> 옵션 가구의 퀄리티</span>

								똑같은 풀옵션이라도 가구 내용물은 모두 다르다.
								가구의 크기, 품질, 용적 등 원룸 가구의 상태를
								체크하는 것도 매우 중요!

							</li>

							<li><span><i class="la la-check"></i> 1층 피하기</span>

								담배연기와 냄새, 외부 및 도시 소음 등이
								직접적으로 영향을 미치고
								여름철에는 지상에 서식하는 벌레로
								고생할 확률이 높다.
							</li>
						</ul>
					</div>
				</div>

				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-push-xs6 is-txt-left">
						<img src="resources/images/sub_1/section2-img2.png" alt="">
					</div>

					<div class="is-col-xs6 is-pull-xs6 is-txt-right">
						<ul>
							<li>
								<span><i class="la la-check"></i> 수압과 물빠짐</span>
								방을 구할 시,
								화장실과 싱크대의 수압을 중요하게 보고,
								하수구 물빠짐도 회오리가
								생기는지의 여부를 꼭 체크해야한다.
							</li>

							<li>
								<span><i class="la la-check"></i> 수돗물 녹물기 확인</span>
								자취방의 수질 체크도
								건강과 직결되기에 매우 중요하다.
								세숫대야나 세면대, 싱크대에 물을 받아
								녹물이 고이는지 확인!
							</li>

							<li>
								<span><i class="la la-check"></i> 채광 및 통풍 확인</span>
								채광이 있으면 겨울엔 따뜻하고
								여름엔 곰팡이, 악취, 빨래 건조 등 이점이 많다.
								통풍은 채광과 캐미를 이루는 덤!
							</li>
						</ul>
					</div>
				</div>

				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-txt-right">
						<img src="resources/images/sub_1/section2-img3.png" alt="">
					</div>
					<div class="is-col-xs6 is-txt-left">
						<ul>
							<li><span><i class="la la-check"></i> 싱크대 아래쪽 확인</span>

								원룸 악취 원인은 싱크대!
								싱크대 수납장을 열고 파이프의 상태를 확인하자.
								연결이 부실하면 악취가 올라오니 냄새 확인!

							</li>

							<li><span><i class="la la-check"></i> 방음 확인</span>

								층간, 벽간 방음이 잘 되는지 확인!
								벽을 주먹으로 두드렸을 때 둔탁하고
								막힌 벽을 치는 느낌이 들어야 된다.(속이 통통 빈소리는 NO!)

							</li>

							<li><span><i class="la la-check"></i> 기호에 따라 인덕션, 가스레인지 선택</span>

								편리성을 본다면 가스레인지가 좋지만,
								안전이나 디자인, 취향에 신경 쓴다면 인덕션이 좋을 수 있다.
							</li>
						</ul>
					</div>
				</div>


				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-push-xs6 is-txt-left">
						<img src="resources/images/sub_1/section2-img4.png" alt="">
					</div>
					<div class="is-col-xs6 is-pull-xs6 is-txt-right">
						<ul>
							<li><span><i class="la la-check"></i> 관리비 지불 목록 확인</span>

								전기료, 수도세, 가스비 등 원룸마다
								개인이 지불하는 비용 목록이 다르다.
								관리비는 보통 월세 지불과 별도이므로
								내야하는 항목이 무엇이 있는지 미리 체크해두어야 한다.

							</li>

							<li><span><i class="la la-check"></i> 자전거 공간과 CCTV 유무 확인</span>

								자전거, 스쿠터가 있다면 주차공간이 있는지 확인!
								또한 건물 내 CCTV 보유 원룸이 치안상 좋다.

							</li>

							<li><span><i class="la la-check"></i> 주변 편의시설 유무</span>

								펀의시설, 대중교통의 편의성도
								자취생활에서 아주 중요한 부분이니 체크!</li>
						</ul>
					</div>

				</div>
			</div>
		</section>

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