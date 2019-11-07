<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>

<head>
   <meta charset="utf-8">

   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

   <title>방 올리기</title>
   <meta name="description" content="">
   <meta name="author" content="">
   <meta name="viewport" content="width=device-width,initial-scale=1">

   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
   <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
   <link rel="stylesheet" href="resources/css/uc.min.css">
   <link rel="stylesheet" href="resources/css/basic.css">
   <link rel="stylesheet" href="resources/css/slick.css">
   <link rel="stylesheet" href="resources/css/slick-theme.css">
   <link rel="stylesheet" href="resources/plugins/fonts/line-awesome.css">
   <link rel="stylesheet" href="resources/plugins/owlCarousel/owl.carousel.min.css">
   <link rel="stylesheet" href="resources/plugins/owlCarousel/owl.theme.default.min.css">
   <link rel="stylesheet" href="resources/css/style_sub2_3.css">
   <link rel="stylesheet" href="resources/plugins/jquery-ui/jquery-ui.css">
   <link rel="stylesheet" href="resources/css/layout.css">
   <link rel="stylesheet" href="resources/plugins/slick/slick.css">
   <link rel="stylesheet" href="resources/css/mapsearch.css">
   
   <script src="resources/js/jquery-3.3.1.min.js"></script>
   <script src="resources/js/uc.lib.min.js"></script>
   <script src="resources/js/uc.plugin.min.js"></script>
   <script src="resources/js/slick.min.js"></script>
   <script src="resources/js/common.js"></script>
	
</head>

<body>
	
	<%@ include file="../../resources/include/header.jsp"%>	
		
   <!-- 허위매물 제재 정책 팝업 -->
   <div id="fakePropertyModal" data-uc-modal class="is-fade">
      <div class="is-modal-dialog">
         <div data-uc-panel>
            <div class="is-panel-body">
               <div data-uc-colgroup="">
                  <div class="is-col-lg12" style="font-size:0.8em; line-height: 2.8em">
                     <p>매물 등록</p>
                     <div>
                        <p>1) 전?월세 매물만 등록 가능</p>
                        <p>- 원룸, 1.5룸, 투룸, 쓰리룸, 오피스텔, 아파트에 해당하는 전,월세 매물만 등록 가능합니다.</p>
                        <p>&nbsp;&nbsp;&nbsp;ex) 상가, 사무실 등 주거 외 시설 불가</p>
                        <p>- LH/SH의 장기전세주택 상품과 고시원업(고시원,원룸텔 등), 쉐어하우스, 레지던스 등의 매물 등록은 불가합니다.</p>
                        <p>2) 직거래 매물 등록과 공인중개사 매물물 등록으로 구분</p>
                        <p>- 직거래 매물 : 개인사용자 회원의 경우 무료로 1개 매물 등록이 가능합니다.</p>
                        <p>- 공인중개사 매물 : 일반상품품, 지하철상품, 동상품, 대학교상품 등을 최소 10개 이상 구매 후 매물 등록 가능합니다.</p>
                        <p>3) 정확한 매물 위치 정보 입력</p>
                        <p>- 등록 매물의 정확한 주소를를 입력해야 합니다.</p>
                        <p>&nbsp;&nbsp;&nbsp;ex) 서울특별시 강남구 역삼동 635-2 / 서울특별시 강남구 태해란로 7길 2</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

	<c:set var="list" value="${List }"/>	
   <li class="content_wrap">
      <div class="is-frame-md is-pd-y_50" data-uc-tab>
         <ul class="is-tab-nav">
            <li class="is-active">
            <a href="#prdList1" data-uc-click="tab">이지역 핫한 방 </a></li>
         </ul>
         <div class="is-tab-content">
            <div id="prdList1" class="is-tab-pane is-active is-show">
               <div class="owl-carousel owl-theme is-product-wrap">
              
              <c:forEach items="${list }" var="tdto" varStatus="status">
                  <div id="item" class="item">
                     <div class="is-thumb">
                        <a href="room_cont.do?r_no=${tdto.getR_no() }">
                        <img style="width:450px; height:150px;"src="${tdto.getR_photoOne() }" alt="" /></a>
                     </div>
                     <div class="is-info">
                        <span>${ tdto.getR_btype()} <span>#</span></span>
                        <h3>${ tdto.getR_rentfee()}</h3>
                        <p>${ tdto.getR_floor()}층, ${ tdto.getR_dimension()}m²</p>
                         <p>관리비 ${ tdto.getR_utility()}, ${ tdto.getR_detail()})</p>
                     </div>
                  </div>
                </c:forEach>
                
               </div>
            </div>
         </div>
      </div>
      
      <div class="is-bg-brown is-pd-y_30">
         <div class="is-frame-md">
            <h3 class="is-txt-center" style="font-size: 22px; color: #1d160e; margin-bottom: 30px;">청춘다방, 간편<span
                  style="font-size: 22px; color: #726c5c; ">하게 이용하는 방법</span></h3>
            <ul class="columns-xs5 is-clearfix">
               <li class="is-col" style="border-right: 2px solid #f8f2e6; height: 80px;">
                  <img src="resources/images/sub_2_3/icon_1.png">
               </li>
               <li class="is-col" style="border-right: 2px solid #f8f2e6; height: 80px;">
                  <img src="resources/images/sub_2_3/icon_2.png">
               </li>
               <li class="is-col" style="border-right: 2px solid #f8f2e6; height: 80px;">
                  <img src="resources/images/sub_2_3/icon_3.png">
               </li>
               <li class="is-col" style="border-right: 2px solid #f8f2e6; height: 80px;">
                  <img src="resources/images/sub_2_3/icon_4.png">
               </li>
               <li class="is-col">
                  <img src="resources/images/sub_2_3/icon_5.png">
               </li>
            </ul>

         </div>
      </div>
        
</script>
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

   </li>

</body>
<script src="resources/plugins/owlCarousel/owl.carousel.min.js"></script>
<script>
   $('.owl-carousel').owlCarousel({
      loop: true,
      margin: 10,
      nav: true,
      dots: true,
      responsive: {
         0: {
            items: 1
         },
         600: {
            items: 3
         },
         1000: {
            items: 5
         }
      }
   })
</script>

</html>