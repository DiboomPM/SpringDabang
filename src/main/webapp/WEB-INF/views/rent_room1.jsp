<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>서브3</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width,initial-scale=1">

	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
	<link rel="stylesheet" href="resources/plugins/fonts/line-awesome.css">

	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
	<link rel="stylesheet" href="resources/css/uc.min.css">
	<link rel="stylesheet" href="resources/css/basic.css">
	<link rel="stylesheet" href="resources/css/slick.css">
	<link rel="stylesheet" href="resources/css/slick-theme.css">
	<link rel="stylesheet" href="resources/css/style_sub1.css">
	<link rel="stylesheet" href="resources/css/layout.css">
	<link rel="stylesheet" href="resources/css/sub3.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/uc.lib.min.js"></script>
	<script src="resources/js/uc.plugin.min.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/common.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1b51f66e54fd5e327b654103d5fc9ca1&libraries=services"></script>

<script>

	var searchval = '${searchval}';
	window.onload = function() {
		$("#searchval").text(searchval + "(으)로 검색한 결과입니다.");
		}	

</script>
</head>

<body>

		<div>
		<%@ include file="../../resources/include/header.jsp"%>
	</div>


	<div class="content_wrap">
	    <div class="sub3-main">
	        <div class="sub3-main-content">
	            <p>단기 거주자를 위한 '청춘다방'의 1~6개월 단기임대 서비스</p>
	        </div>
	    </div>
	     <table>
	  	   <tbody>
           		<tr>
                    <th></th>
                	<td>
                                             
<!--                         <input type="text" size="40" id="sample5_address" name="r_address" placeholder="주소 검색 버튼으로 검색하세요" readonly>
						<input type="button" onclick="find_m ap()" value="주소 검색"><br><br>
						<input type="hidden" id="r_address10" name="r_address">
						<div id="map" style="width:600px;height:300px;margin-left:10px; margin-top:10px;display:none" hidden></div>		
				 -->		
						<form method="get" action="<%=request.getContextPath()%>/searchAddress.do">
						<input type="text" size="40" id="searchAddress" name="searchAddress" placeholder="주소를 입력하세요">
						<input type="submit" value="주소 검색" onclick="search()">
						</form>
						
<!-- 	
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };
    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });
    
    function find_map() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면_
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);

                        console.log(result.x);
                        console.log(result.y);
                        console.log(coords);
                        
						var mapLocation = result.y + ", " + result.x;
						console.log(mapLocation);

						
                        document.getElementById("map_location1").value = result.y;
                        document.getElementById("map_location2").value = result.x;
                        
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();     
    }
</script> -->
						</td>
					</tr>
				</tbody>
			</table>
			
			<div align="center" id="searchval" name="serachval"></div>
                      
		<c:set var="list" value="${SearchAddress}"/>
      		<c:if test="${!empty list}">
		 		<div class="sub3-slides-wrap">
	       			 <div class="slides-content">
	           			 <h2>1개월 ~ 2개월</h2>
                			<div class="slides">
								<c:forEach items="${list }" var="i"  varStatus="status">
									<c:if test="${i.getR_monthlimit() eq '1~2개월'}">
	                						<c:if test="${status.first}"></c:if>
	                  						  <div>
	                      						<img src="resources/img/1.jpg" alt="">
	                      							<strong>${i.getR_type()}</strong><br>
	                      								<h3>월 / ${i.getR_rentfee().split("/")[1]}</h3><span>&nbsp;만원</span>
	                      									<p>${i.getR_movedate()} ~ ${i.getR_ritire() }</p>
	            	  	  					  				</div>
	                    					  	<c:if test="${status.last}"></c:if>	
                      				</c:if>
                				 </c:forEach>
	        				</div>
	  		  		</div>
	    		</div>
	    		
	    		<div class="sub3-slides-wrap1">
	       			 <div class="slides-content">
	           			 <h2>3개월 ~ 4개월</h2>
                			<div class="slides">
								<c:forEach items="${list }" var="i"  varStatus="status">
									<c:if test="${i.getR_monthlimit() eq '3~4개월'}">
                						<c:if test="${status.first}"></c:if>
                  						  <div>
                      						<img src="resources/img/1.jpg" alt="">
                      							<strong>${i.getR_type()}</strong><br>
                      								<h3>월 / ${i.getR_rentfee().split("/")[1]}</h3><span>&nbsp;만원</span>
                      									<p>${i.getR_movedate()} ~ ${i.getR_ritire() }</p>
            	  	  					  </div>
                    					  <c:if test="${status.last}">
                    					  </c:if>
                      				</c:if>
                				 </c:forEach>
	        				</div>
	  		  		</div>
	    		</div>
	    		
	    		<div class="sub3-slides-wrap">
	       			 <div class="slides-content">
	           			 <h2>5개월 ~ 6개월</h2>
                			<div class="slides">
								<c:forEach items="${list }" var="i"  varStatus="status">
									<c:if test="${i.getR_monthlimit() eq '5~6개월'}">
                						<c:if test="${status.first}"></c:if>
                  						  <div>
                      						<img src="resources/img/1.jpg" alt=""> 
                      							<strong>${i.getR_type()}</strong><br>
                      								<h3>월 / ${i.getR_rentfee().split("/")[1]}</h3><span>&nbsp;만원</span>
                      									<p>${i.getR_movedate()} ~ ${i.getR_ritire() }</p>
            	  	  					  </div>
                    					  <c:if test="${status.last}">
                    					  </c:if>
                      				</c:if>
                				 </c:forEach>
	        				</div>
	  		  		</div>
	    		</div>
	   </c:if>
	   
		<c:if test="${empty list}">
		<h2 align="center">검색 결과가 없습니다.</h2>
		</c:if>
        
	    <div class="button-wrap">
	        <div class="y-button">
	           <a href="<%=request.getContextPath() %>/rent_room_upload.do">
                  <p>나의 방 내놓기</p>
               </a>
	        </div>
	    </div>
	    
        <div class="pop-wrap">
            <div class="pop-content">
                <div class="pop-photo">
                    <h2>생활용품 모두 사용가능! 몸만오세요~</h2>
                </div>
                <div class="pop-text">
                    <span></span>
                    <span></span>
                    <button>close</button>
                    <p>2019.03.04 ~ 2019.04.04(협의가능)</p>
                    <div class="box-wrap">
                        <div><strong>1개월</strong></div>
                        <div><strong>33만원</strong></div>
                        <div><strong>관리비포함</strong></div>
                    </div>
                    <ul>
                        <li>• 층/건물층수 : 1층/4층</li>
                        <li>• 전용면적 : 23.14m² (7P)</li>
                        <li>• 반려동물 : 가능</li>
                        <li>• 베란다/발코니 : 있음</li>
                        <li>• 난방종류 : 개별난방</li>
                        <li>• 입주가능일 : 즉시입주</li>
                    </ul>
                    <div class="icon-wrap">
                        <div>TV</div>
                        <div>책상</div>
                        <div>침대</div>
                        <div>인덕션</div>
                        <div>옷장</div>
                    </div>
                    <div class="pop-map"></div>
                </div>
            </div>
        </div>

            <div id="searchadd">
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

	</div>
        
        
</body>
</html>