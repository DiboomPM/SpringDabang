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
    <!--header-->
    <%@ include file="../../resources/include/header.jsp"%>

    <div class="container">
        <div class="gongyu my1 my1-4">



            <!--sub_top-->
            <div class="sub_top top6">
                <b class="title"><img src="resources/images/sub/sub6_top_img.png" alt="">마이페이지</b>
            </div>

            <!--tab_menu-->
            <div class="tab_menu menu4">
                 <ul>
                   <li><a href="<%=request.getContextPath() %>/my_room_1.do">찜한방</a></li>
                   <li><a href="<%=request.getContextPath() %>/my_room_2.do">예약방</a></li>
                    <li class="on"><a href="<%=request.getContextPath() %>/my_room_3.do">나의 방 수정하기</a></li>
                    <li><a href="<%=request.getContextPath() %>/my_room_4.do">회원 정보 수정</a></li>
                </ul>
            </div>

            <!--tab_content-->
            <div class="tab_content">
                <div id="tab1">
                    <div class="wrap">
                        <form action="">

                            <div class="write_box write1">
                                <table class="type1">
                                    <thead>
                                        <tr>
                                            <th colspan="2">매물종류</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>종류 선택</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio1_1" name="radio1" class="type1" title="">
                                                    <label for="radio1_1">원룸</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio1_2" name="radio1" class="type1" title="">
                                                    <label for="radio1_2">투룸</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>건물 유형</th>
                                            <td>

                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio2_1" name="radio2" class="type1" title="">
                                                    <label for="radio2_1">단독 주택</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio2_2" name="radio2" class="type1" title="">
                                                    <label for="radio2_2">다가구 주택</label>
                                                </div>

                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio2_3" name="radio2" class="type1" title="">
                                                    <label for="radio2_3">빌라/연립/다세대</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio2_4" name="radio2" class="type1" title="">
                                                    <label for="radio2_4">상가 주택</label>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>


                            <div class="write_box write2">
                                <table class="type1">
                                    <thead>
                                        <tr>
                                            <th colspan="2">위치 정보
                                                <ul>
                                                    <li>* 등기부등본 상의 주소를 입력해 주세요.</li>
                                                </ul>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>주소</th>
                                            <td>
                                                <span class="ex">도로명, 건물명, 지번에 대해 통합검색이 가능합니다.</span>
                                                <div class="sch_form">
                                                    <input type="text" class="type1">
                                                    <input type="submit" class="btn_yellow" value="주소검색">
                                                </div>
                                                <div class="add_more">
                                                    <input type="text" class="type1">
                                                    <span>동</span>
                                                </div>
                                                <div class="add_more">
                                                    <input type="text" class="type1">
                                                    <span>호</span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="output">
                                                    <p>도로명:서울특별시 금천구 금하로 685-2 B동 403호</p>
                                                    <p>
                                                        지번:서울특별시 금천구 시흥동 837-50 B동 403호
                                                    </p>
                                                </div>
                                                <div class="ckzone">
                                                    <input type="checkbox" id="ck1" name="agreement" class="type3" title="">
                                                    <label for="ck1"><span></span>등본에 동 정보가 없는 경우 선택해주세요.</label>
                                                </div>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>


                            <div class="write_box write3">
                                <table class="type1">
                                    <thead>
                                        <tr>
                                            <th colspan="2">거래 정보
                                                <ul>
                                                    <li>* 처음에 선택한 거래 종류가 우선노출됩니다.</li>
                                                    <li>* 예치금이 있는 경우 보증금 입력란에 필히 입력하세요.</li>
                                                </ul>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th rowspan="3">거래 종류</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio3_1" name="radio3" class="type1" title="">
                                                    <label for="radio3_1">월세</label>
                                                </div>
                                                <div class="info">
                                                    <span>보증금 / 월세 </span>
                                                    <input type="text" class="type1">
                                                    &nbsp;&nbsp;/&nbsp;&nbsp;
                                                    <input type="text" class="type1">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio3_2" name="radio3" class="type1" title="">
                                                    <label for="radio3_2">전세</label>
                                                </div>
                                                <div class="info">
                                                    <input type="text" class="type1">
                                                    &nbsp;&nbsp;만원
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio3_3" name="radio3" class="type1" title="">
                                                    <label for="radio3_3">연세</label>
                                                </div>
                                                <div class="info">
                                                    <span>보증금 / 연세 </span>
                                                    <input type="text" class="type1">
                                                    &nbsp;&nbsp;/&nbsp;&nbsp;
                                                    <input type="text" class="type1">
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="write_box write4">
                                <table class="type1">
                                    <thead>
                                        <tr>
                                            <th colspan="2">기본 정보</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>건물 크기<br>(1p=3.3058)</th>
                                            <td colspan="3">
                                                <ul>
                                                    <li>
                                                        공급 면적&nbsp;&nbsp;
                                                        <input type="text" class="type1">&nbsp;&nbsp;평
                                                    </li>
                                                    <li>
                                                        전용 면적&nbsp;&nbsp;
                                                        <input type="text" class="type1">&nbsp;&nbsp;평
                                                    </li>
                                                </ul>

                                            </td>
                                        </tr>
                                        <tr>
                                            <th>건물 층수</th>
                                            <td colspan="3">
                                                <ul>
                                                    <li>
                                                        건물 층수&nbsp;&nbsp;
                                                        <input type="text" class="type1">&nbsp;&nbsp;층
                                                    </li>
                                                    <li>
                                                        해당 층수&nbsp;&nbsp;
                                                        <input type="text" class="type1">&nbsp;&nbsp;층
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>난방 종류</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio4_1" name="radio4" class="type1" title="">
                                                    <label for="radio4_1">월세</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio4_2" name="radio4" class="type1" title="">
                                                    <label for="radio4_2">전세</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio4_3" name="radio4" class="type1" title="">
                                                    <label for="radio4_3">지방 난방</label>
                                                </div>
                                            </td>
                                            <th>입주 가능일</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio5_1" name="radio5" class="type1" title="">
                                                    <label for="radio5_1">월세</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio5_2" name="radio5" class="type1" title="">
                                                    <label for="radio5_2">전세</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio5_3" name="radio5" class="type1" title="">
                                                    <label for="radio5_3">연세</label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>관리비</th>
                                            <td colspan="3">
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio6_1" name="radio6" class="type1" title="">
                                                    <label for="radio6_1">없음</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio6_2" name="radio6" class="type1" title="">
                                                    <label for="radio6_2">있음</label>
                                                </div>
                                                <div class="info info2">
                                                <input type="text" class="type1">&nbsp;&nbsp;만원
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>관리비 항목<br>(다중선택가능)</th>
                                            <td colspan="3">
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check1_1" name="check1" class="type1" title="">
                                                    <label for="check1_1">인터넷</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check1_2" name="check1" class="type1" title="">
                                                    <label for="check1_2">유선tv</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check1_3" name="check1" class="type1" title="">
                                                    <label for="check1_3">청소비</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check1_4" name="check1" class="type1" title="">
                                                    <label for="check1_4">도시가스</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check1_5" name="check1" class="type1" title="">
                                                    <label for="check1_5">전기세</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check1_6" name="check1" class="type1" title="">
                                                    <label for="check1_6">수도세</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check1_7" name="check1" class="type1" title="">
                                                    <label for="check1_7">기타</label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>주차 여부</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio7_1" name="radio7" class="type1" title="">
                                                    <label for="radio7_1">없음</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio7_2" name="radio7" class="type1" title="">
                                                    <label for="radio7_2">있음</label>
                                                </div>
                                            </td>
                                            <th>반려동물</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio8_1" name="radio8" class="type1" title="">
                                                    <label for="radio8_1">불가능</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio8_2" name="radio8" class="type1" title="">
                                                    <label for="radio8_2">가능</label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>엘레베이터</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio9_1" name="radio9" class="type1" title="">
                                                    <label for="radio9_1">없음</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio9_2" name="radio9" class="type1" title="">
                                                    <label for="radio9_2">있음</label>
                                                </div>
                                            </td>
                                            <th>베란다/발코니</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio10_1" name="radio10" class="type1" title="">
                                                    <label for="radio10_1">없음</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio10_2" name="radio10" class="type1" title="">
                                                    <label for="radio10_2">있음</label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>빌트인</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio11_1" name="radio11" class="type1" title="">
                                                    <label for="radio11_1">없음</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio11_2" name="radio11" class="type1" title="">
                                                    <label for="radio11_2">있음</label>
                                                </div>
                                            </td>
                                            <th>구조</th>
                                            <td>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio12_1" name="radio12" class="type1" title="">
                                                    <label for="radio12_1">복층</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio12_2" name="radio12" class="type1" title="">
                                                    <label for="radio12_2">분리형 (1.5룸)</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="radio" id="radio12_3" name="radio12" class="type1" title="">
                                                    <label for="radio12_3">투룸+</label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>옵션 항목</th>
                                            <td colspan="3">
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_1" name="check2" class="type1" title="">
                                                    <label for="check2_1">에어컨</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_2" name="check2" class="type1" title="">
                                                    <label for="check2_2">세탁기</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_3" name="check2" class="type1" title="">
                                                    <label for="check2_3">침대</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_4" name="check2" class="type1" title="">
                                                    <label for="check2_4">옷장</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_5" name="check2" class="type1" title="">
                                                    <label for="check2_5">TV</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_6" name="check2" class="type1" title="">
                                                    <label for="check2_6">신발장</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_7" name="check2" class="type1" title="">
                                                    <label for="check2_7">냉장고</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_8" name="check2" class="type1" title="">
                                                    <label for="check2_8">가스레인지</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_9" name="check2" class="type1" title="">
                                                    <label for="check2_9">인덕션</label>
                                                </div>
                                                <div class="btn_yellow">
                                                    <input type="checkbox" id="check2_10" name="check2" class="type1" title="">
                                                    <label for="check2_10">전자레인지</label>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="write_box write5">
                                <table class="type1">
                                    <thead>
                                        <tr>
                                            <th colspan="2">상세 설명</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>제목</th>
                                            <td>
                                                <input type="text" class="type1 title" placeholder="50자 이내로 작성 부탁드립니다." maxlength="50">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>상세 설명</th>
                                            <td>
                                               <textarea name="" id="" cols="30" rows="30"  class="type1 detail_box" placeholder="상세 설명은 3600자 이내로 작성 부탁드립니다."></textarea>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>



                            <div class="write_box write6">
                                <table class="type1">
                                    <thead>
                                        <tr>
                                            <th>사진 등록</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="box">
                                                    <ul>
                                                        <li>-사진은 가로로 찍은 사진을 권장합니다.(가로 사이즈 최소 800px)</li>
                                                        <li>-사진 용량은 사진 한 장당 10mb 까지 등록이 가능합니다.</li>
                                                        <li>-사진은 최소 3장 이상 등록해야 하며 최대 15장 까지 권장합니다. 그 이상 등록할 경우 업로드 시간이 다소
                                                            지연될 수 있습니다</li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="bg">
                                               <div class="img_area">
                                                    <a href="#">
                                                        <img src="resources/images/sub/my1-4_1.png" alt="">
                                                        <div class="dim">
                                                            <span>
                                                            <img src="resources/images/sub/my1-4_plus.png" alt="">
                                                            더보기</span>
                                                        </div>
                                                    </a>
                                                   <a href="#">
                                                        <img src="resources/images/sub/my1-4_1.png" alt="">
                                                        <div class="dim">
                                                            <span>
                                                            <img src="resources/images/sub/my1-4_plus.png" alt="">
                                                            더보기</span>
                                                        </div>
                                                    </a>
                                                    <a href="#">
                                                        <img src="resources/images/sub/my1-4_1.png" alt="">
                                                        <div class="dim">
                                                            <span>
                                                            <img src="resources/images/sub/my1-4_plus.png" alt="">
                                                            더보기</span>
                                                        </div>
                                                    </a>
                                               </div>
                                                
                                                <button class="btn btn_upload">사진 등록</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            <p class="plus">
                                <a href="#">허위매물 제재 정책 확인하기</a>
                            </p>

                            <div class="agreement">
                                <input type="checkbox" id="agree" name="agree" class="type3" title="">
                                <label for="agree"><span></span>매물관리규정을 확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</label>
                            </div>

                            <div class="btn_wrap">
                                <input type="submit" class="btn btn_yellow" value="저장">
                                <a href="#" class="btn btn_yellow">취소</a>
                            </div>

                        </form>
                    </div>
                </div>
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




</body>

</html>
