<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

/* ajax에서 처리 */
//이메일 검사 정규식
var emailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
//닉네임 정규식
var nickJ = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,12}$/;

/* script에서 처리 */
// 비밀번호 정규식 (숫자, 문자, 특수문자 포함)
var pwdJ = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,10}$/;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
// 생년월일 정규식
var birthJ = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/

/* 안썼지만 다른 정규식 */
//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9]{4,12}$/;


	function setModal1() {
	   	$('#joinModal1').fadeOut().removeClass('is-show').attr('aria-hidden','true');
	    $('#joinModal1').removeAttr('style').attr("style", "display:none");
	    $('body').removeAttr('style');
	}

	// 회원 가입 버튼 클릭시 공란 경고문
	function signup_check(){

		var m_email = $("#m_email").val();
		var m_nick = $("#m_nick").val();
		var m_pwd = $("#m_pwd").val();
		var m_pwd2 = $("#m_pwd2").val();
		var m_name = $("#m_name").val();
		var m_birth = $("#m_birth").val();
		var m_phone = $("#m_phone").val();
			    
		   	 if(m_email.length == 0){
			        alert("이메일을 입력해 주세요"); 
			        $("#m_email").focus();
			        return false;
		   	 }

		   	 if(m_nick.length == 0){
			        alert("닉네임을 입력해 주세요"); 
			        $("#m_nick").focus();
			        return false;
			 }
		   	 if(m_pwd.length == 0){
			        alert("비밀번호를 입력해 주세요"); 
			        $("#m_pwd").focus();
			        return false;
			 }
		   	 if(m_pwd2.length == 0){
			        alert("비밀번호 확인을 입력해 주세요"); 
			        $("#m_pwd2").focus();
			        return false;
			 }
		   	 if(m_name.length == 0){
			        alert("이름을 입력해 주세요"); 
			        $("#m_name").focus();
			        return false;
			 }
		   	 if(m_birth.length == 0){
			        alert("생년월일을 입력해 주세요"); 
			        $("#m_birth").focus();
			        return false;
			 }
		   	 if(m_phone.length == 0){
				    alert("연락처를 입력해 주세요"); 
			        $("#m_phone").focus();
			        return false;
			 }
			    if(confirm("회원가입을 하시겠습니까?")){
			        alert("회원가입을 축하합니다");
			        return true;
			 }
		}

	 // 생년월일 정규식 검사 및 길이 확인
	$(function(){
		$('#m_birth').blur(function(){
			var m_birth = $('#m_birth').val();
			if(m_birth.match(birthJ) != null) {
				return true;
			}else{
				if(m_birth.length < 7){
					if((m_birth)!=''){
						alert("생년월일 길이가 짧습니다.");
						$("#m_birth").val('');
						$("#m_birth").focus();
					}
				}if(m_birth.length > 9){
					if((m_birth)!=''){
						alert("생년월일 길이가 너무 깁니다.");
						$("#m_birth").val('');
						$("#m_birth").focus();
					}
				}else if(m_birth.length == 8){
					if((m_birth)!=''){
						alert("생년월일은 8자리의 숫자만 가능합니다.");
						$("#m_birth").val('');
						$("#m_birth").focus();
					}
				}
			}
		});
	});
	
	// 이름 정규식 검사 및 길이 확인
	$(function(){
		$('#m_name').blur(function(){
			var m_name = $('#m_name').val();
			if(m_name.match(nameJ) != null) {
				return true;
			}else{
				if(m_name.length < 2){
					if((m_name)!=''){
						alert("이름길이가 짧습니다.");
						$("#m_name").val('');
						$("#m_name").focus();
					}
				}if(m_name.length > 10){
					if((m_name)!=''){
						alert("이름 길이가 너무 깁니다.");
						$("#m_name").val('');
						$("#m_name").focus();
					}
				}else if(m_name.length > 1 && m_name.length < 11){
					if((m_name)!=''){
						alert("이름은 한글만 가능합니다.");
						$("#m_name").val('');
						$("#m_name").focus();
					}
				}
			}
		});
	});

	// 비밀번호 정규식 검사 및 길이 확인
	$(function(){
		$('#m_pwd').blur(function(){
			var m_pwd = $('#m_pwd').val();
			if(m_pwd.match(pwdJ) != null) {
				return true;
			}else{
				if(m_pwd.length < 8){
					if((m_pwd)!=''){
						alert("비밀번호가 짧습니다.");
						$("#m_pwd").val('');
						$("#m_pwd").focus();
					}
				}if(m_pwd.length > 15){
					if((m_pwd)!=''){
						alert("비밀번호가 너무 깁니다.");
						$("#m_pwd").val('');
						$("#m_pwd").focus();
					}
				}else if(m_pwd.length > 7 && m_pwd.length < 16){
					if((m_pwd)!=''){
						alert("비밀번호는 영문,숫자,특수문자 조합 형태입니다.");
						$("#m_pwd").val('');
						$("#m_pwd").focus();
					}
				}
			}
		});
	});

	// 핸드폰번호 정규식 검사 및 길이 확인
	$(function(){
		$('#m_phone').blur(function(){
			var m_phone = $('#m_phone').val();
			if(m_phone.match(phoneJ) != null) {
				return true;
			}else{
				if(m_phone.length < 10){
					if((m_phone)!=''){
						alert("핸드폰 번호가 짧습니다.");
						$("#m_phone").val('');
						$("#m_phone").focus();
					}
				}if(m_pwd.length > 11){
					if((m_pwd)!=''){
						alert("핸드폰 번호가 너무 깁니다.");
						$("#m_phone").val('');
						$("#m_phone").focus();
					}
				}else if(m_phone.length > 9 && m_pwd.length < 12){
					if((m_phone)!=''){
						alert("핸드폰 번호는 10~11자리입니다.");
						$("#m_phone").val('');
						$("#m_phone").focus();
					}
				}
			}
		});
	});
	
	$(function() {
		// 비밀 번호 일치 여부 확인 
		$('#m_pwd2').blur(function(){
			   if($('#m_pwd').val() != $('#m_pwd2').val()){
			    	if($('#m_pwd2').val()!=''){
				    alert("비밀번호가 일치하지 않습니다.");
			    	    $('#m_pwd2').val('');
			          $('#m_pwd2').focus();
			       }
			    }
			});  
	});	 

	// 이메일 텍스트창에서 커서 이동시 중복확인 및 정규화 체크
	$(function() {
		$('#m_email').blur(function(){
		var m_email = $('#m_email').val();
			$.ajax({
				async : false,
				url :  "${pageContext.request.contextPath}/checkemail.do?mem_email="+ m_email,
				type : "post",
				success : function(data){
					console.log("1 = 중복o / 0 = 중복x : "+ data);	
					if(data == 1){
						

		  				$("#emailcheck").text("사용중인 이메일입니다. 확인해주세요 :p");  
						$("#emailcheck").css("color", "red");
					} else{
						if(emailJ.test(m_email)){
							// 이메일 정규 체크
							$("#emailcheck").css("color","green");
							$("#emailcheck").text("사용 가능한 아이디입니다.");
						} else if(m_email == ""){
							$('#emailcheck').text('이메일을 입력해주세요 :)');
							$('#emailcheck').css('color', 'red');		
						} else {
							$('#emailcheck').text("이메일 형식이 올바르지 않습니다.");
							$('#emailcheck').css('color', 'red');
						}	 
					}
				}, error : function() {
						console.log("실 ㅡ 패");
				}
			});
		});
	});

	// 닉네임 텍스트창에서 커서 이동시 중복확인 및 정규화 체크
	$(function(){
		$('#m_nick').blur(function(){
			var m_nick = $('#m_nick').val();
				$.ajax({
					async : false,
					url :  "${pageContext.request.contextPath}/checknick.do?mem_nick="+ m_nick,
					type : "post",
					success : function(data){
						if(data == 1){
			  				$("#nickcheck").text("사용중인  닉네임입니다 :p");  
							$("#nickcheck").css("color", "red");
						} else{
							if(nickJ.test(m_nick)){
								// 닉네임 정규 체크
								$("#nickcheck").css("color","green");
								$("#nickcheck").text("아주 멋진 닉네임이군요!");
							} else if(m_nick == ""){
								$('#nickcheck').text('닉네임을 입력해주세요 :)');
								$('#nickcheck').css('color', 'red');		
							} else if(m_nick < 2){
								$('#nickcheck').text('닉네임은 2글자 이상입니다.');
								$('#nickcheck').css('color', 'red');
							}else if(m_nick > 12){
								$('#nickcheck').text('닉네임은 12글자 이하입니다.');
								$('#nickcheck').css('color', 'red');
							}else {
								$('#nickcheck').text("사용 불가능한 닉네임입니다.");
								$('#nickcheck').css('color', 'red');
							}	 
						}
					}, error : function() {
							$('#nickcheck').text("error 발생");
					}
				});
			});
		});
/*  document.onkeydown = checkKeycode 키코드 보는것
	function checkKeycode(e) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (e) keycode = e.which;
	alert("keycode: " + keycode);
} */
	 

</script>
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
                            
                            <form data-uc-form method="post" action="<%=request.getContextPath()%>/login.do">
                                <div class="is-input-field is-mg-b_15">
                                    <input type="text" id="input_email" name="input_email" value="" placeholder="이메일"
                                           style="border-color: #777676;" />
                                </div>
                                <div class="is-input-field is-mg-b_30">
                                    <input type="password" id="input_pwd" name="input_pwd" value="" placeholder="비밀번호"
                                           style="border-color: #777676;" />
                                </div>
                                <div class=" is-mg-b_15">
                                    <button type="submit" class="is-btn-yg1 is-mg-b_15">로그인</button>
                                    <a href="#joinModal1" data-uc-click="modal" class="is-btn-yg2">회원가입</a>
                                </div>
                                <div class="is-txt-center">
                                    <a href="<%=request.getContextPath() %>/email_find.do">이메일 찾기</a>
                                    <a href="<%=request.getContextPath() %>/pwd_find.do">패스워드 찾기</a>                                    
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <!--회원가입 팝업-->
    <div id="joinModal1" data-uc-modal class="is-fade join">
        <div class="is-modal-dialog">
            <div data-uc-panel>
                <div class="is-panel-body">
                    <form action="" data-uc-form>
                        <div class="inner_box">

                            <b class="title">회원가입</b>


                            <div class="box box1">
                                <dl>
                                    <dt>* 이용약관 (필수)
                                        <b>
                                            <input type="checkbox" id="agree1" name="agreement" class="type3" title="" required>
                                            <label for="agree1"><span></span>동의합니다.</label>
                                        </b>
                                    </dt>
                                    <dd>
                                <textarea name="dirrhks" id="dirrhks" cols="30" rows="5" class="type2" readonly>청춘다방 서비스 이용약관
 
제1장 총칙

제1조 (목적)

본 약관은 (주)청춘다방(이하 “회사”라 함)이 운영하는 인터넷 사이트 및 모바일 어플리케이션(이하 “직방”이라 함)에서 제공하는 제반 서비스의 이용과 관련하여 회사와 이용자 및 이용자간의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

제2조 (정의)

1. 청춘다방: 회사가 컴퓨터 등 정보통신설비를 이용하여 서비스를 제공할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 인터넷 사이트 및 모바일 어플리케이션을 운영하는 사업자의 의미로도 사용합니다.
2. 이용자: 청춘다방에 접속하여 본 약관에 따라 회사가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
3. 회원: 회사에 개인정보를 제공하여 회원등록을 한 자로서, 청춘다방의 정보를 지속적으로 제공받으며, 회사가 제공하는 청춘다방의 서비스를 계속적으로 이용할 수 있는 자를 말합니다. 회사는 서비스의 원활한 제공을 위해 회원의 등급을 회사 내부의 규정에 따라 나눌 수 있습니다.
4. 비회원: 회원으로 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말합니다.
5. 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인한 회원 본인의 이메일 주소를 말합니다.
6. 비밀번호: 회원의 동일성 확인과 회원정보의 보호를 위하여 회원이 설정하고 회사가 승인한 문자나 숫자의 조합을 말합니다.
7. 서비스: 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 회원이 이용할 수 있는 직방의 서비스를 의미합니다.
8. 게시판: 그 명칭, 형태, 위치와 관계없이 회원 및 비회원 이용자에게 공개할 목적으로 부호?문자?음성?음향?화상?동영상 등의 정보 (이하 "게시물"이라 합니다)를 회원이 게재할 수 있도록 회사가 제공하는 서비스 상의 가상공간을 말합니다.
9. 별칭: 인터넷사이트에서 아이디와 함께, 또는 아이디를 대신하여 회원을 식별하기 위하여 이용자의 신청과 회사의 승인에 의하여 설정되는 숫자와 문자의 조합을 말합니다.
10. 운영자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.
위 항에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 거래관행에 의합니다.

제3조 (약관 등의 명시와 설명 및 개정)

1. 회사는 본 약관의 내용을 이용자가 쉽게 알 수 있도록 직방 인터넷 사이트 및 모바일 어플리케이션에 공지합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
2. 회사는 “약관의 규제에 관한 법률”, “정보 통신망 이용 촉진 및 정보보호 등에 관한 법률” 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 이용자가 알기 쉽도록 표시하여 공지합니다.
4. 회사가 약관을 개정할 경우에는 변경된 약관은 공지된 시점부터 그 효력이 발생하며, 이용자는 약관이 변경된 후에도 본 서비스를 계속 이용함으로써 변경 후의 약관에 대해 동의를 한 것으로 간주됩니다.

제4조 (약관의 해석)

1. 회사는 서비스운영을 위해 별도의 운영정책을 마련하여 운영할 수 있으며, 회사는 직방 인터넷 사이트 및 모바일 어플리케이션에 운영정책을 사전 공지 후 적용합니다.
2. 본 약관에서 정하지 아니한 사항이나 해석에 대해서는 별도의 운영정책, 관계법령 또는 상관례에 따릅니다.

제5조 (서비스의 제공 및 변경)

1. 회사가 제공하는 서비스는 다음과 같습니다
1) 부동산 매물 등에 관한 정보제공 서비스
2) 부동산 매물 등록 서비스
3) 부동산 중개업소 추천 등 기타 관련 서비스
2. 회사가 제공하는 서비스의 내용을 기술적 사양의 변경 등의 이유로 변경할 경우에는 그 사유를 이용자에게 통지하거나, 이용자가 알아볼 수 있도록 공지사항으로 게시합니다.

제6조 (서비스의 중단)

1. 회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
2. 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 회사는 이용자에게 통지하거나, 이용자가 알아볼 수 있도록 공지사항으로 게시합니다.

제7조 (회원에 대한 통지)

1. 회사는 이메일, 이동전화 단문메시지서비스(SMS), 푸시알림(App push)등으로 회원에게 통지할 수 있습니다.
2. 회사는 불특정다수 회원에 대한 통지의 경우 공지사항으로 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.

제 2장 이용계약 및 정보보호

제8조 (회원가입 및 회원정보의 변경)

1. 이용자는 회사가 정한 가입 양식에 따라 회원정보를 기입한 후 본 약관 등에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
2. 회사는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
1) 등록 내용에 허위, 기재누락, 오기가 있는 경우
2) 가입신청자가 이전에 회원자격을 상실한 적이 있는 경우 (다만 회원자격 상실 후 회사가 필요하다고 판단하여 회원재가입 승낙을 얻은 경우에는 예외로 합니다.)
3) 회사로부터 회원자격 정지 조치 등을 받은 회원이 그 조치기간 중에 이용계약을 임의 해지 하고 재이용 신청을 하는 경우
4) 기타 회원으로 등록하는 것이 직방의 기술상 현저히 지장이 있다고 판단되는 경우
5) 본 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우 및 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경우
3. 회원 가입 계약의 성립시기는 회사의 승낙이 회원에게 도달한 시점으로 합니다.
4. 회원은 회원 가입 신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 회사에 그 변경사항을 알려야 합니다.
5. 제4항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.
6. 회원가입은 반드시 본인의 진정한 정보를 통하여만 가입할 수 있으며 회사는 회원이 등록한 정보에 대하여 확인조치를 할 수 있습니다. 회원은 회사의 확인조치에 대하여 적극 협력하여야 하며, 만일 이를 준수하지 아니할 경우 회사는 회원이 등록한 정보가 부정한 것으로 처리할 수 있습니다.
7. 회사는 회원을 등급별로 구분하여 이용시간, 이용회수, 서비스 메뉴, 매물 등록 건 수 등을 세분하여 이용에 차등을 둘 수 있습니다.

제9조 (이용 계약의 종료)

1. 회원의 해지
1) 회원은 언제든지 회사에게 해지 의사를 통지할 수 있고 회사는 특별한 사유가 없는 한 이를 즉시 수락하여야 합니다. 다만, 회원은 해지의사를 통지하기 전에 모든 진행중인 절차를 완료, 철회 또는 취소해야만 합니다. 이 경우 철회 또는 취소로 인한 불이익은 회원 본인이 부담하여야 합니다.
2) 회원이 발한 의사표시로 인해 발생한 불이익에 대한 책임은 회원 본인이 부담하여야 하며, 이용계약이 종료되면 회사는 회원에게 부가적으로 제공한 각종 혜택을 회수할 수 있습니다.
3) 회원의 의사로 이용계약을 해지한 후, 추후 재이용을 희망할 경우에는 재이용 의사가 회사에 통지되고, 이에 대한 회사의 승낙이 있는 경우에만 서비스 재이용이 가능합니다.
4) 본 항에 따라 해지를 한 회원은 이 약관이 정하는 회원가입절차와 관련조항에 따라 신규 회원으로 다시 가입할 수 있습니다. 다만 회원이 중복참여가 제한된 판촉이벤트 중복 참여 등 부정한 목적으로 회원탈퇴 후 재이용을 신청하는 경우 회사는 가입을 일정기간 동안 제한할 수 있습니다.
5) 본 항에 따라 해지를 한 이후에는 재가입이 불가능하며, 모든 가입은 신규가입으로 처리됩니다.
2. 회사의 해지
1) 회사는 다음과 같은 사유가 발생하거나 확인된 경우 이용계약을 해지할 수 있습니다
①다른 회원의 권리나 명예, 신용 기타 정당한 이익을 침해하거나 대한민국 법령 또는 공서양속에 위배되는 행위를 한 경우
②회사가 제공하는 서비스의 원활한 진행을 방해하는 행위를 하거나 시도한 경우
③제 8조 제 2항의 승낙거부 사유가 추후 발견된 경우
④회사가 정한 서비스 운영정책을 이행하지 않거나 위반한 경우
⑤기타 회사가 합리적인 판단에 기하여 서비스의 제공을 거부할 필요가 있다고 인정할 경우
2) 회사가 해지를 하는 경우 회사는 회원에게 이메일, 전화, 기타의 방법을 통하여 해지 사유를 밝혀 해지 의사를 통지합니다. 이용계약은 회사의 해지의사를 회원에게 통지한 시점에 종료됩니다.
3) 본 항에서 정한 바에 따라 이용계약이 종료될 시에는 회사는 회원에게 부가적으로 제공한 각종혜택을 회수할 수 있습니다. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 하고, 회사는 일체의 책임을 지지 않습니다.
4) 본 항에서 정한 바에 따라 이용계약이 종료된 경우에는, 회원의 재이용 신청에 대하여 회사는 이에 대한 승낙을 거절할 수 있습니다.
3. “회원”이 계약을 해지하는 경우, 관련법 및 개인정보취급방침에 따라 “회사”가 “회원”정보를 보유하는 경우를 제외하고는 해지 즉시 “회원”의 모든 데이터는 소멸됩니다.

제10조 (개인정보보호)

1. 회사는 이용자의 회원가입 시 서비스 제공에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
1)이메일주소
2)비밀번호
3)휴대폰 번호(부동산 매물등록 서비스 및 신고기능을 이용하는 회원인 경우)
2. 회사가 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.
3. 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공하지 않습니다. 다만, 다음의 경우에는 예외로 합니다.
1) 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
2) 도용방지를 위하여 본인확인에 필요한 경우
3) 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우
4. 회사가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은 자, 제공목적 및 제공할 정보의 내용) 등 정보통신망이용촉진등에관한법률 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
5. 회사는 이용자의 개인정보를 보호하기 위해 “개인정보취급방침”을 수립하고 개인정보보호책임자를 지정하여 이를 게시하고 운영합니다.
6. 이용자는 언제든지 회사가 갖고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 회사는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 회사는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
7. 회사 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다. 다만, 아래의 경우에는 회원 정보를 보관합니다. 이 경우 회사는 보관하고 있는 회원 정보를 그 보관의 목적으로만 이용합니다.
1) 상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원 정보를 보관합니다.
2) 회사가 이용계약을 해지하거나 회사로부터 서비스 이용정지조치를 받은 회원에 대해서는 재가입에 대한 승낙거부사유가 존재하는지 여부를 확인하기 위한 목적으로 이용계약종료 후 5년간 아이디, 전화번호를 비롯하여 이용계약 해지와 서비스 이용정지와 관련된 정보 등의 필요정보를 보관합니다.
8. 회사는 새로운 업체가 제휴사 또는 제휴영업점의 지위를 취득할 경우 제7조 2항에서 정한 것과 같은 방법을 통하여 공지합니다. 이 때 회원이 별도의 이의제기를 하지 않을 경우 직방 서비스 제공이라는 필수적인 목적을 위해 해당 개인 정보 제공 및 활용에 동의한 것으로 간주 합니다.
9. 모든 이용자는 직방으로부터 제공받은 정보를 다른 목적으로 이용하거나 타인에게 유출 또는 제공해서는 안되며, 위반 사용으로 인한 모든 책임을 부담해야 합니다. 또한 회원은 자신의 개인정보를 책임 있게 관리하여 타인이 회원의 개인정보를 부정하게 이용하지 않도록 해야 합니다


제 3장 서비스의 이용

제11조 (부동산 매물 등에 관한 정보제공 서비스)

1. 부동산 매물 등에 관한 정보제공 서비스는 회사가 이용자 스스로 해당 정보를 확인 및 이용할 수 있도록 관련 정보를 제공하는 것입니다.
2. 회사는 직방 인터넷 사이트 및 모바일 어플리케이션 내에서 제공하는 모든 정보에 대해서 정확성이나 신뢰성이 있는 정보를 제공하기 위해 노력하지만, 그 과정에서 발생할 수 있는 정보의 정확성이나 신뢰성에 대해서는 어떠한 보증도 하지 않으며, 정보의 오류로 인해 발생하는 모든 직접, 파생적, 징벌적, 부수적인 손해에 대해 책임을 지지 않습니다. 회사는 직방 인터넷 사이트 및 모바일 어플리케이션을 통해 제공되는 정보의 내용을 수정할 의무를 지지 않으나, 필요에 따라 개선할 수는 있습니다.


제12조 (부동산 매물 등록 서비스)

1. 부동산 매물 등록 서비스는 회원이 매물정보(부동산 거래정보 및 거래 물건에 대한 다양한 부가정보)와 회원 연락처(회원의 이메일 주소 및 휴대폰 번호)를 직접 직방 인터넷 사이트 및 모바일 어플리케이션에 등록하여 이용자에게 노출할 수 있는 것을 말합니다.
2. 회사는 회원이 등록한 매물정보의 노출순서 및 영역의 추가 등에 대한 결정 권한을 갖고 있습니다. 또한, 회사는 사전통지 없이 회원의 매물정보 등을 직방 인터넷 사이트 및 모바일 어플리케이션 이외의 다른 인터넷 사이트 등에 노출할 수 있습니다.
3. 회사는 회원이 등록한 매물정보에 대해 등록 후 24시간 이내에 해당 매물정보의 진위 여부를 확인하며, 진위 여부 확인 즉시 해당 매물을 노출합니다.
4. 회원이 등록한 매물정보가 실제 매물정보와 불일치 하는 경우 회사는 회원이 가입시 제공한 전화번호 또는 이메일을 통해 회원에게 매물정보의 수정을 요청합니다. 회사가 회원이 제공한 연락수단으로 2회 이상 연락하였음에도 불구하고 연락이 되지 않을 경우의 책임은 “회원”에게 있습니다.
5. 전항에 따른 회사의 정당한 매물정보 수정 요청에도 불구하고 회원이 24시간 이내에 매물정보(거래완료 혹은 노출종료와 같은 매물상태 변경 포함)를 수정하지 않을 경우, 회사는 해당 매물정보의 노출을 중지하고 회원의 서비스 이용을 제한 할 수 있습니다.
6. 회사는 직방에 등록된 매물 중 사회통념, 관례 및 회사의 합리적인 판단에 의하여 거래가 부적합하다고 판단되는 경우 이의 삭제를 요청하거나 직권으로 삭제할 수 있으며 해당 회원의 서비스 이용을 정지 혹은 탈퇴시킬 수 있습니다. 직방에 거래부적합 부동산 매물을 등록할 경우, 거래부적합 매물에 대한 법적인 책임은 해당 등록자에게 있습니다

제13조 (부동산 중개업소 추천 등 기타 관련 서비스)

1. 회사는 이용자가 원하는 경우 이용자의 편의를 위해 부동산 중개업소를 이용자에게 추천할 수 있습니다.
2. 이용자가 회사가 추천한 부동산 중개업소를 이용할지 여부는 전적으로 이용자 스스로의 판단에 따라 결정하는 것으로 회사는 이용자가 해당 부동산 중개업소를 이용하여 발생하는 모든 직접, 파생적, 징벌적, 부수적인 손해에 대해 책임을 지지 않습니다.

제14조 (정보의 제공 및 광고의 게재)

1. 회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 서비스 내 공지사항, 서비스 화면, 전자우편 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 위 정보제공에 대해서 수신 거절을 할 수 있습니다.
2. 회사는 서비스의 운영과 관련하여 회사가 제공하는 서비스의 화면 및 홈페이지 등에 광고를 게재할 수 있습니다.

제 4장 책임

제15조 (회사의 의무)

1. 회사는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 이용자에게 서비스를 제공하기 위해 최선을 다합니다.
2. 회사는 이용자 상호간의 거래에 있어서 어떠한 보증도 제공하지 않습니다. 이용자 상호간 거래 행위에서 발생하는 문제 및 손실에 대해서 회사는 일체의 책임을 부담하지 않으며, 거래당사자간에 직접 해결해야 합니다.

제16조 (회원의 아이디 및 비밀번호에 대한 의무)

1. 아이디와 비밀번호에 관한 관리책임은 회원에게 있습니다.
2. 회원은 자신의 아이디 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
3. 회원이 자신의 아이디 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 회사에 통보하고 회사의 안내가 있는 경우에는 그에 따라야 합니다.

제17조 (이용자의 의무)

1. 이용자는 다음 각호의 행위를 하여서는 안됩니다. 만약 다음 각호와 같은 행위가 확인되면 회사는 해당 이용자에게 서비스 이용에 대한 제재를 가할 수 있으며 민형사상의 책임을 물을 수 있습니다.
(1)회사 서비스의 운영을 고의 및 과실로 방해하는 경우
(2)신청 또는 변경 시 허위 내용의 등록
(3)타인의 정보 도용
(4)허위 매물 정보의 등록
(5)회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
(6)회사 및 기타 제3자의 저작권 등 지적재산권에 대한 침해
(7)회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
(8)외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 직방에 공개 또는 게시하는 행위
(9)사기 및 악성 글 등록 등 건전한 거래 문화 활성에 방해되는 행동
(10)기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우
2. 회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지할 수 있는 모든 권한을 갖고 있습니다. 회사는 회사 정책에 위반한 행동을 하는 특정 회원의 ID를 삭제할 수 있고, 이용 중지 등의 모든 서비스 제한 조치를 이용자에게 통보 없이 직권으로 할 수 있습니다.
3. 회사는 회사의 정책에 따라서 회원 간의 차별화된 유료 서비스를 언제든지 제공할 수 있습니다. 만약 회원이 비용을 지불하지 않고 사용을 할 경우 회사는 특정 회원에게 서비스 중지 및 특정 서비스 제한을 할 수 있습니다.

제18조 (저작권의 귀속 및 이용제한)

1. 서비스에 대한 저작권 및 지적재산권은 회사에 귀속됩니다. 단, 회원이 직방을 이용하여 작성한 저작물에 대한 저작권은 해당 회원에게 귀속됩니다.
2. 이용자는 서비스를 이용함으로써 얻은 정보 중 회사에게 지적재산권이 귀속된 정보를 회사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.

제19조 (책임의 한계 등)

1. 회사는 무료로 제공하는 정보 및 서비스에 관하여 개인정보취급방침 또는 관계법령의 벌칙, 과태료 규정 등 강행규정에 위배되지 않는 한 원칙적으로 손해를 배상할 책임이 없습니다.
2. 회사는 천재지변, 불가항력, 서비스용 설비의 보수, 교체, 점검, 공사 등 기타 이에 준하는 사항으로 정보 및 서비스를 제공할 수 없는 경우에 이에 대한 책임이 면제됩니다.
3. 회사는 이용자의 귀책사유로 인한 정보 및 서비스 이용의 장애에 관한 책임을 지지 않습니다.
4. 회사는 회원이 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.
5. “서비스”에서 제공하는 정보에 대한 신뢰 여부는 전적으로 “이용자” 본인의 책임이며, “회사”는 매물정보를 등록한 “회원”에 의한 사기, 연락 불능 등으로 인하여 발생하는 어떠한 직접, 간접, 부수적, 파생적, 징벌적 손해, 손실, 상해 등에 대하여 도덕적, 법적 책임을 부담하지 않습니다. 또한 “서비스”를 통하여 노출, 배포, 전송되는 정보를 “이용자”가 이용하여 발생하는 부동산 거래 등에 대하여 “회사”는 어떠한 도덕적, 법적 책임이나 의무도 부담하지 아니합니다.
6. “이용자”가 “회사”가 추천한 부동산 중개업소를 이용할지 여부는 전적으로 “이용자” 스스로의 판단에 따라 결정하는 것으로 “회사”는 “이용자”가 해당 부동산 중개업소를 이용하여 발생하는 모든 직접, 파생적, 징벌적, 부수적인 손해에 대해 책임을 지지 않습니다.

제20조 (손해배상 등)

1. 회사는 회원이 서비스를 이용함에 있어 회사의 고의 또는 과실로 인해 손해가 발생한 경우에는 민법 등 관련 법령이 규율하는 범위 내에서 그 손해를 배상합니다.
2. 회원이 이 약관을 위반하거나 관계 법령을 위반하여 회사에 손해가 발생한 경우에는 회사에 그 손해를 배상하여야 합니다.
3. 회원이 이 약관을 위반하거나 관계 법령을 위반하여 제3자가 회사를 상대로 민형사상의 법적 조치를 취하는 경우에는 회원은 자신의 비용과 책임으로 회사를 면책시켜야 하며, 이로 인해 발생하는 손해에 대해 배상하여야 합니다.

제21조 (분쟁해결)

1. 회사는 이용자 상호간 분쟁에서 발생하는 문제에 대해서 일체의 책임을 지지 않습니다. 이용자 상호간 분쟁은 당사자간에 직접 해결해야 합니다.
2. 이용자 상호간에 서비스 이용과 관련하여 발생한 분쟁에 대해 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.

제22조 (재판권 및 준거법)

1. 회사와 회원간 제기된 소송은 대한민국법을 준거법으로 합니다.
2. 회사와 회원간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에 제소합니다.

부칙
제1조 (적용일자)
이 약관은 2013년 11월 1일부터 적용됩니다.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------




										</textarea>
                                    </dd>
                                </dl>
                            </div>

                            <div class="box box2">
                                <dl>
                                    <dt>* 개인정보 수집 및 이용에 대한 안내 (필수)
                                        <b>
                                            <input type="checkbox" id="agree2" name="agreement" class="type3" title="" required>
                                            <label for="agree2"><span></span>동의합니다.</label>
                                        </b>
                                    </dt>
                                    <dd>
                                <textarea name="dksso" id="dksso" cols="30" rows="5" class="type2" readonly>개인정보의 수집 및 이용에 대한 안내
(주)직방은 직방 서비스 제공을 위해서 아래와 같이 개인정보를수집합니다.
정보주체는본 개인 정보의 수집 및이용에 관한 동의를 거부하실권리가있으나,
서비스 제공에 필요한 최소한의 개인정보이므로 동의를해주셔야 서비스를 이용하실 수 있습니다.
수집하려는 개인 정보 항목: 성명, 이메일, 비밀번호, 휴대전화 번호
개인정보의 수집 목적: 회원제 서비스 이용, 개인식별, 가입의사 확인,
고지사항 전달, 가입 및 가입횟수 제한 불만처리 등 민원 처리, 방내놓기서비스 이용
개인정보의 보유기간: 회원 탈퇴 후 5년까지 </textarea>
                                    </dd>
                                </dl>
                            </div>




<!--                            <input type="submit" class="btn btn_submit" value="회원가입">-->
                            <a href="#joinModal" data-uc-click="modal" class="btn btn_submit" onclick="javascript:setModal1();">회원가입</a>
                       		
                       		
                            


                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div id="joinModal" data-uc-modal class="is-fade">
        <div class="is-modal-dialog">
            <div data-uc-panel>
                <div class="is-panel-body">
                    <div class="is-col-xs6 is-offset-xs3">
                        <h3 style="font-size: 34px; color: #404040; text-align: center; margin-bottom: 30px;">회원가입</h3>
                        <form data-uc-form method="post" action="<%=request.getContextPath()%>/signup.do">
                            <p style="font-size: 16px; color: #404040; text-align: center; margin-bottom: 15px;">이메일회원가입
                            </p>
                            <div class="is-input-field is-mg-b_15 kk">
                                <input type="text" id="m_email" name="m_email" value="" placeholder="* 이메일주소" />
                            </div>
                            <div id="emailcheck" >1</div>
                              <div class="is-input-field is-mg-b_15">
                                <input type="text" id="m_nick" name="m_nick" value="" placeholder="* 닉네임" />
                            </div>
                            <div id="nickcheck" >1</div>
                            <div class="is-input-field is-mg-b_15">
                                <input type="password" id="m_pwd" name="m_pwd" value="" placeholder="* 비밀번호(영문,숫자,특수문자 포함 8자리 이상)" />
                            </div>
                            <div class="is-input-field is-mg-b_15">
                                <input type="password" id="m_pwd2" name="m_pwd2" value="" placeholder="* 비밀번호 확인(영문,숫자,특수문자 포함 8자리 이상)" />
                            </div>
                            <div class="is-input-field is-mg-b_15">
                                <input type="text" id="m_name" name="m_name" value="" placeholder="* 성명(한글)" />
                            </div>
                            <div class="is-input-field is-mg-b_15">
                                <input type="text" id="m_birth" name="m_birth" value="" placeholder="생년월일(8자리로 입력)" />
                            </div>
                            <div class="is-input-field is-mg-b_15">
                                <input type="text" id="m_phone" name="m_phone" value="" placeholder="연락처(- 구분없이 입력)" />
                            </div>
                            <div class="is-input-field is-mg-b_15">
                                <div data-uc-colgroup style="background-color: #eee; padding: 10px 0;">
                                    <div class="is-col-xs6 is-align-mid is-txt-center">
                                        <label class="is-chk-lab">
                                            <input type="radio" id="m_gender" name="m_gender" value="여성" checked="checked"><span></span> 여</label>
                                    </div>
                                    <div class="is-col-xs6 is-align-mid is-txt-center">
                                        <label class="is-chk-lab">
                                            <input type="radio" id="m_gender" name="m_gender" value="남성"><span></span> 남</label>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="is-input-field is-mg-b_40">
                                <label class="is-chk-lab">
                                    <input type="checkbox" id="privacy_1" name="privacy_1" value="0"><span></span> (선택)
                                    개인정보 제3자
                                    제공에 동의합니다.</label>
                                <label class="is-chk-lab">
                                    <input type="checkbox" id="privacy_2" name="privacy_2" value="1"><span></span> (필수)
                                    개인정보 제공 및
                                    수집에 동의합니다.</label>
                            </div> -->
                            <div class=" is-mg-b_15">
                                <button type="submit" class="is-btn-yg1 is-mg-b_15" onclick="return signup_check();">회원가입</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <c:set var="session" value="${member}"/>
 	<c:if test="${!empty session}">
<header id="header">
        <div class="header_wrap">
            <h1><a href="<%=request.getContextPath() %>/main_room.do"><img src="resources/images/main/logo.png" alt=""></a></h1>
            <nav id="gnb">
            
            
                <ul>
                    <li><a href="<%=request.getContextPath() %>/view_room.do">방보기</a></li>
                    <li><a href="<%=request.getContextPath() %>/rent_room.do">단기임대</a></li>
                    <li><a href="<%=request.getContextPath() %>/upload_room.do">방올리기</a></li>
                    <li><a href="<%=request.getContextPath() %>/share_room.do">공유방</a></li>
                    <li><a href="<%=request.getContextPath() %>/customer_room.do">고객센터</a></li>
                </ul>
            </nav>
             <div class="util">
                <ul>
                  
                    <li><a href="<%=request.getContextPath() %>/my_room_1.do"><img src="resources/images/main/mypage_icon.png" alt=""></a></li>
                    <li><a class="logout" href="<%=request.getContextPath() %>/logout.do">로그아웃</a></li>
                </ul>
            </div>
        </div>
    </header>
 	</c:if>
 	 	<c:if test="${empty session}">
    <!--header-->
    <header id="header">
        <div class="header_wrap">
            <h1><a href="<%=request.getContextPath() %>/main_room.do"><img src="resources/images/main/logo.png" alt=""></a></h1>
            <nav id="gnb">
            
            
                <ul>
                    <li><a href="<%=request.getContextPath() %>/view_room.do">방보기</a></li>
                    <li><a href="<%=request.getContextPath() %>/rent_room.do">단기임대</a></li>
                    <li><a href="<%=request.getContextPath() %>/upload_room.do">방올리기</a></li>
                    <li><a href="<%=request.getContextPath() %>/share_room.do">공유방</a></li>
                    <li><a href="<%=request.getContextPath() %>/customer_room.do">고객센터</a></li>
                </ul>
            </nav>
            <div class="util">
                <ul>
                    <li><a href="#loginModal" data-uc-click="modal"><img src="resources/images/main/login_icon.png" alt=""></a></li>
                    <li><a href="#joinModal1" data-uc-click="modal"><img src="resources/images/main/join_icon.png" alt=""></a></li>
                </ul>
            </div>
        </div>
    </header>
    </c:if>
</body>
</html>