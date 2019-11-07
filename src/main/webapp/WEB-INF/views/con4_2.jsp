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
	<link rel="stylesheet" href="resources/css/style_sub4.css">
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
				<li class="on"><a href="<%=request.getContextPath()%>/con4_2.do">인테리어 팁</a></li>
				<li><a href="<%=request.getContextPath()%>/share_room.do">가전가구 나눔</a></li>
			</ul>
		</div>

		<section class="section2">

			<div class="is-frame-md">

				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-txt-right">
						<img src="resources/images/sub_4/tip1.jpg" alt="">
					</div>

					<div class="is-col-xs6 is-txt-left">
						<ul>
							<li class="left-padding"><span> Tip 1.메인 컬러를 정하고 벽면 연출하기</span></li>
							<li class="left-padding">

								메인이 되어줄 주된 톤을 한두 가지 결정해야 하는데,
								과한 컬러감보다는 주로 밝은 계열(베이지, 화이트)
								혹은 톤다운된 연한 컬러가 적당!
								소품이나 가구들로 컬러 포인트를 주는것이 좋다.

							</li>
						</ul>
					</div>
				</div>

				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-push-xs6 is-txt-left">
						<img src="resources/images/sub_4/tip2.jpg" alt="">
					</div>

					<div class="is-col-xs6 is-pull-xs6 is-txt-left">
						<ul>
							<li>
								<span> Tip 2. 수납을 극대화하는 가구를 활용!</span></li>
							<li>
								좋은 자취방 필수품은 수납 가구입니다.
								들어갈 가구는 한정되어 있고 짐의 양은 많기 때문에
								이런 경우 두 가지 역할을 하는 시스템 가구의 활용을
								권해 드립니다.
							</li>


						</ul>
					</div>
				</div>

				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-txt-right">
						<img src="resources/images/sub_4/tip3.jpg" alt="">
					</div>

					<div class="is-col-xs6 is-txt-left">
						<ul>
							<li class="left-padding"><span> Tip 3. 수납 아이템 타공판 활용!</span></li>
							<li class="left-padding">

								굴러다니기 쉬운 문구류나 헤드폰, 액세서리 등을
								타공판에 걸어두면 인테리어 효과도 나고
								자잘한 자취방 소품의 수납효과도 만점이랍니다.

							</li>
						</ul>
					</div>
				</div>

				<div class="section2-contents" data-uc-colgroup="row-lg">
					<div class="is-col-xs6 is-push-xs6 is-txt-left">
						<img src="resources/images/sub_4/tip4.jpg" alt="">
					</div>

					<div class="is-col-xs6 is-pull-xs6 is-txt-left">
						<ul>
							<li>
								<span> Tip 4. 높은 천장을 적극 활용한 인테리어</span></li>
							<li>
								자취방의 천장이 높은 경우는 그 공간 또한
								적극적으로 활용하면 좋습니다.
								침대를 2층에 두고 아래는 책상을 배치하거나
								높은 선반을 배치하여 물건을
								알뜰하게 보관할 수 있습니다.
							</li>
						</ul>
					</div>
				</div>

				<div class="section2-contents" data-uc-colgroup="row-lg" style="margin-bottom: 100px;">
					<div class="is-col-xs6 is-txt-right">
						<img src="resources/images/sub_4/tip5.jpg" alt="">
					</div>

					<div class="is-col-xs6 is-txt-left">
						<ul>
							<li class="left-padding"><span> Tip 5. 물건의 양을 단순화 하자</span></li>
							<li class="left-padding">

								좁은 공간을 가장 아름답게 쓸 수 있는 방법은
								공간의 컬러만 단순화하는 게 아니라
								짐이나 물건의 양도 단순화하셔야 한다는 사실!!
								물건들을 계절별로 자주 정리해주시면
								깔끔한 자취방을 유지할수있습니다.

							</li>
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

</html>l>