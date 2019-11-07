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
	<link rel="stylesheet" href="resources/css/style_sub2_2.css">
	<link rel="stylesheet" href="resources/css/layout.css">
	<link rel="stylesheet" href="resources/css/style_sub2_nanum.css">
	
	<link rel="stylesheet" href="resources/css/fine-uploader-gallery.css">
	<link rel="stylesheet" href="resources/css/style.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/uc.lib.min.js"></script>
	<script src="resources/js/uc.plugin.min.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/common.js"></script>
</head>

<body>

<%@ include file="../../resources/include/header2.jsp"%>

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

		<form name="fileForm" method="post" action="<%=request.getContextPath() %>/share_ok.do" enctype="multipart/form-data" >
		<div class="is-frame-md">
		    <div class="section table-wrap">
		        <table border="1">
		            <caption>글쓰기</caption>
		            <tr>
		                <th>제목</th>
		                <td>
		                    <input type="text" name="s_title" placeholder="예) 옷장 2개 나눔해요">
		                </td>
		            </tr>
		            <tr>
		                <th>상세 설명</th>
		                <td>
		                    <textarea name="s_cont" cols="80" rows="5" placeholder="예) 이삿짐 정리하면서 옷장이 불필요하게 되어 나눔하려고 합니다.
		                        
가전가구 나눔과 관련없는 홍보성 정보는 입력하실수 없습니다.
*상세설명 주의사항 위반시 허위글로 간주되어 글 삭제 및 이용의 제한이 있을 수 있습니다."></textarea>
		                </td>
		            </tr>
		            <tr>
		                <th>비공개 메모</th>
		                <td>
		                    <input type="text" name="s_memo" placeholder="외부에 공개되지 않으며, 등록자에게만 보이는 메모입니다.">
		                </td>
		            </tr>
		        </table>
		    </div>
		  <!--   <div class="section table-wrap2">
		        <table>
		            <caption>사진등록</caption>
                    <tr>
                        <td>
                            <div class="box-wrap">
                                <p>실 사진 최소 3장 이상 등록 하셔야 하며, 가로 사진을 권장합니다.</p>
                                <p>여기방 로고를 제외한 불필요한 정보(워터마크,상호,전화번호 등)가 있는 매물은 비공개 처리 됩니다.</p>
                            </div>
                            <button type="button">사진 등록</button>
                        </td>
                    </tr>
		        </table>
		    </div>
		     -->
		     <div>
		     <br><br><br>
		     </div>
		     <div data-uc-table="sub2_2" >
					<table class="is-table-ver">
						<colgroup>
							<col width="100%">
						</colgroup>		
						<tr>
							<td>
								<h3>사진 등록</h3>
							</td>
						</tr>
						<tr> 
							<td>
								<div class="is-txt-center gallery is-clearfix">
									<img src="resources/images/sub_2_2/fileupload.png" alt="" style="width: 100%;" />
								</div>
								<div class="is-txt-center">
									<input type='file' id="gallery-photo-add" name="file" multiple="multiple" />
									
									
								</div>
							</td>
						</tr>
					</table>
				</div>
				<script>
					$(function () {
						// Multiple images preview in browser
						var imagesPreview = function (input, placeToInsertImagePreview) {
							$('.gallery').html('');
							if (input.files) {
								var filesAmount = input.files.length;

								for (i = 0; i < filesAmount; i++) {
									var reader = new FileReader();

									reader.onload = function (event) {
										$($.parseHTML('<img>')).attr('src', event.target.result).appendTo(
											placeToInsertImagePreview);
									}

									reader.readAsDataURL(input.files[i]);
								}
							}

						};

						$('#gallery-photo-add').on('change', function () {
							imagesPreview(this, 'div.gallery');
						});
					});
				</script>
		    <div class="check-wrap">
		        <input type="checkbox"><label>입력한 정보는 실제 내용과 다름이 없습니다.</label> <br>
		        <div class="btn-wrap">
		            <button type="submit">글 올리기</button>
		           <button type="button">취소</button>
		        </div>
		    </div>
		</div>
		</form>
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