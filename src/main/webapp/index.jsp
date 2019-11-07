<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="resources/css/uc.min.css">
<link rel="stylesheet" href="resources/css/basic.css">
<link rel="stylesheet" href="resources/css/slick.css">
<link rel="stylesheet" href="resources/css/slick-theme.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/layout.css">

<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/uc.lib.min.js"></script>
<script src="resources/js/uc.plugin.min.js"></script>
<script src="resources/js/slick.min.js"></script>
<script src="resources/js/common.js"></script>


<title>청춘다방</title>
</head>

<body>


	<div>
		<%@ include file="resources/include/header.jsp"%>
	</div>

	<!--main_visial-->
	<div class="main_visual">
		<div class="wrap">
			<img src="resources/images/main/main_img.png" alt="">
			<div class="sch_box">
				<div>
					<form method="post"
						action="<%=request.getContextPath()%>/search_room.do">
						<input type="text" class="sch_input"> <input type="submit"
							class="sch_submit">
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="con con1">
		<div class="wrap">
			<img src="resources/images/main/con1.png" alt="">
		</div>
	</div>

	<div class="con con2">
		<div class="wrap">
			<b class="title"><img src="resources/images/main/con2_title.png"
				alt=""></b>

			<ul>
				<li>
					<div class="img_area">
						<img src="resources/images/main/con2_img1.png" alt="">
					</div> <span> 조건 검색하기<br> 방종류, 옵션 등 <b>조건 선택</b>
				</span>
				</li>
				<li>
					<div class="img_area">
						<img src="resources/images/main/con2_img2.png" alt="">
					</div> <span> <b>원하는방 찜</b> 해두고<br> 비교해보기
				</span>
				</li>
				<li>
					<div class="img_area">
						<img src="resources/images/main/con2_img3.png" alt="">
					</div> <span> 방문가능 날자,시간 체크 후<br> <b>방문 예약하기</b>
				</span>
				</li>
				<li>
					<div class="img_area">
						<img src="resources/images/main/con2_img4.png" alt="">
					</div> <span> <b>예약한방</b> 꼼꼼히<br> 체크하며 <b>둘러보기</b>
				</span>
				</li>
				<li>
					<div class="img_area">
						<img src="resources/images/main/con2_img5.png" alt="">
					</div> <span> 계약하기 </span>
				</li>
			</ul>
		</div>
	</div>

	<!-- 인기방 디비에서 불러오기 -->
	<div class="con con3">
		<div class="wrap">
			<b class="title"><span>신규 업데이트. 인기방</span></b>
			<div class="main_slider">
				<div class="slide slide1">
					<a href="#"> <img src="resources/images/main/slide1.png" alt="">
						<div class="dim">
							<div>
								<img src="resources/images/main/map_icon.png" alt=""
									class="map_icon">
								<p>
									충청남도 서북구<br> 남서울대학교 <b>도보 7분</b>
								</p>
								<div class="price">
									<ul>
										<li>보증금</li>
										<li>월세</li>
										<li class="number">500 / 30</li>
									</ul>
								</div>
								<div class="option">
									<ul>
										<li><img src="resources/images/main/slide_option1.png"
											alt=""> <span>세탁기</span></li>
										<li><img src="resources/images/main/slide_option2.png"
											alt=""> <span>인덕션</span></li>
										<li><img src="resources/images/main/slide_option3.png"
											alt=""> <span>전자레인지</span></li>
										<li><img src="resources/images/main/slide_option4.png"
											alt=""> <span>에어컨</span></li>
									</ul>
								</div>

							</div>
						</div>

					</a>
				</div>
				<div class="slide slide2">
					<a href="#"> <img src="resources/images/main/slide2.png" alt="">
						<div class="dim">
							<div>
								<img src="resources/images/main/map_icon.png" alt=""
									class="map_icon">
								<p>
									충청남도 서북구<br> 남서울대학교 <b>도보 7분</b>
								</p>
								<div class="price">
									<ul>
										<li>보증금</li>
										<li>월세</li>
										<li class="number">500 / 30</li>
									</ul>
								</div>
								<div class="option">
									<ul>
										<li><img src="resources/images/main/slide_option1.png"
											alt=""> <span>세탁기</span></li>
										<li><img src="resources/images/main/slide_option2.png"
											alt=""> <span>인덕션</span></li>
										<li><img src="resources/images/main/slide_option3.png"
											alt=""> <span>전자레인지</span></li>
										<li><img src="resources/images/main/slide_option4.png"
											alt=""> <span>에어컨</span></li>
									</ul>
								</div>

							</div>
						</div>

					</a>
				</div>
				<div class="slide slide3">
					<a href="#"> <img src="resources/images/main/slide3.png" alt="">
						<div class="dim">
							<div>
								<img src="resources/images/main/map_icon.png" alt=""
									class="map_icon">
								<p>
									충청남도 서북구<br> 남서울대학교 <b>도보 7분</b>
								</p>
								<div class="price">
									<ul>
										<li>보증금</li>
										<li>월세</li>
										<li class="number">500 / 30</li>
									</ul>
								</div>
								<div class="option">
									<ul>
										<li><img src="resources/images/main/slide_option1.png"
											alt=""> <span>세탁기</span></li>
										<li><img src="resources/images/main/slide_option2.png"
											alt=""> <span>인덕션</span></li>
										<li><img src="resources/images/main/slide_option3.png"
											alt=""> <span>전자레인지</span></li>
										<li><img src="resources/images/main/slide_option4.png"
											alt=""> <span>에어컨</span></li>
									</ul>
								</div>

							</div>
						</div>

					</a>
				</div>
				<div class="slide slide4">
					<a href="#"> <img src="resources/images/main/slide4.png" alt="">
						<div class="dim">
							<div>
								<img src="resources/images/main/map_icon.png" alt=""
									class="map_icon">
								<p>
									충청남도 서북구<br> 남서울대학교 <b>도보 7분</b>
								</p>
								<div class="price">
									<ul>
										<li>보증금</li>
										<li>월세</li>
										<li class="number">500 / 30</li>
									</ul>
								</div>
								<div class="option">
									<ul>
										<li><img src="resources/images/main/slide_option1.png"
											alt=""> <span>세탁기</span></li>
										<li><img src="resources/images/main/slide_option2.png"
											alt=""> <span>인덕션</span></li>
										<li><img src="resources/images/main/slide_option3.png"
											alt=""> <span>전자레인지</span></li>
										<li><img src="resources/images/main/slide_option4.png"
											alt=""> <span>에어컨</span></li>
									</ul>
								</div>

							</div>
						</div>

					</a>
				</div>
				<div class="slide slide5">
					<a href="#"> <img src="resources/images/main/slide5.png" alt="">
						<div class="dim">
							<div>
								<img src="resources/images/main/map_icon.png" alt=""
									class="map_icon">
								<p>
									충청남도 서북구<br> 남서울대학교 <b>도보 7분</b>
								</p>
								<div class="price">
									<ul>
										<li>보증금</li>
										<li>월세</li>
										<li class="number">500 / 30</li>
									</ul>
								</div>
								<div class="option">
									<ul>
										<li><img src="resources/images/main/slide_option1.png"
											alt=""> <span>세탁기</span></li>
										<li><img src="resources/images/main/slide_option2.png"
											alt=""> <span>인덕션</span></li>
										<li><img src="resources/images/main/slide_option3.png"
											alt=""> <span>전자레인지</span></li>
										<li><img src="resources/images/main/slide_option4.png"
											alt=""> <span>에어컨</span></li>
									</ul>
								</div>

							</div>
						</div>

					</a>
				</div>
				<div class="slide slide6">
					<a href="#"> <img src="resources/images/main/slide4.png" alt="">
						<div class="dim">
							<div>
								<img src="resources/images/main/map_icon.png" alt=""
									class="map_icon">
								<p>
									충청남도 서북구<br> 남서울대학교 <b>도보 7분</b>
								</p>
								<div class="price">
									<ul>
										<li>보증금</li>
										<li>월세</li>
										<li class="number">500 / 30</li>
									</ul>
								</div>
								<div class="option">
									<ul>
										<li><img src="resources/images/main/slide_option1.png"
											alt=""> <span>세탁기</span></li>
										<li><img src="resources/images/main/slide_option2.png"
											alt=""> <span>인덕션</span></li>
										<li><img src="resources/images/main/slide_option3.png"
											alt=""> <span>전자레인지</span></li>
										<li><img src="resources/images/main/slide_option4.png"
											alt=""> <span>에어컨</span></li>
									</ul>
								</div>

							</div>
						</div>

					</a>
				</div>
			</div>
			<button class="arrow prev">
				<img src="resources/images/main/slide_prev.png" alt="">
			</button>
			<button class="arrow next">
				<img src="resources/images/main/slide_next.png" alt="">
			</button>
		</div>
	</div>

	<div class="con con4">
		<div class="title_area"></div>
		<div class="wrap">
			<div class="box">
				<ul>
					<li><a href="<%=request.getContextPath()%>/con4_1.do">
							<div class="img_area">
								<img src="resources/images/main/con4_img1.png" alt="">
								<div class="dim">
									<p>
										처음 계약하는 자취방<br> 확실하게 알고 준비하세요!
									</p>
								</div>
							</div> <span>실생활 Tip</span>
					</a></li>
					<li><a href="<%=request.getContextPath()%>/con4_2.do">
							<div class="img_area">
								<img src="resources/images/main/con4_img2.png" alt="">
								<div class="dim">
									<p>
										나만의 집!<br> 나의 개성을 살려<br> 인테리어 해보세요!
									</p>
								</div>
							</div> <span>인테리어 Tip</span>
					</a></li>
					<li><a href="<%=request.getContextPath()%>/share_room.do">
							<div class="img_area">
								<img src="resources/images/main/con4_img3.png" alt="">
								<div class="dim">
									<p>
										버리기아까운 가구를<br> 필요한 분들에게<br> 판매 또는 나눔으로 해결!
									</p>
								</div>
							</div> <span>가전가구 나눔</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>

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
				<p>
					<span>상호: </span><span>대표: </span><span>사업자등록번호: </span>
				</p>
				<p>
					<span>주소: </span>
				</p>
				<p>
					<span>팩스: </span><span>통신판매업 신고번호: </span>
				</p>
				<p>
					<span>서비스 이용문의: </span><span>이메일: </span><span>서비스제휴문의: </span>
				</p>
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




</body>

</html>
