$(function() {

	$('.y-btn').click(function() {
		$(this).addClass('y-btn-on');
		$(this).siblings().removeClass('y-btn-on');
	})

		$('.slides').slick({
		slidesToShow : 4,
		slidesToScroll : 1,
		arrrow : true
		})
		
	$('.main_slider').slick({
		dots : false,
		arrow : true,
		infinite : true,
		speed : 500,
		cssEase : 'linear',
		slidesToShow : 5,
		slidesToScroll : 1,
		prevArrow : $('.prev'),
		nextArrow : $('.next')
	});


/*	$(function() {


	});*/

	/** *****tab 메뉴******* */
	// $(".tab_content>div").hide();
	// $("#tab1").show();
	// $(".tab_menu ul li a").click(function () {
	// var number = $(this).parent().index();
	// var con_number = $(".tab_content>div").index();
	// $(".tab_menu ul li").removeClass("on");
	// $(this).parent().addClass("on");
	// $(".tab_content>div").hide();
	// var activeTab = $(this).attr("href");
	// // $("." + activeTab).fadeIn()
	// $(activeTab).fadeIn()
	// return false;
	// })

	$(function() {
		// 전체선택 체크박스 클릭
		$(".join #agree_all").click(function() {
			// 만약 전체 선택 체크박스가 체크된상태일경우
			// 해당화면에 전체 checkbox들을 체크해준다
			if ($("#agree_all").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
			} else {
				// 전체선택 체크박스가 해제된 경우
				// 해당화면에 모든 checkbox들의 체크를해제시킨다.
				$("input[type=checkbox]").prop("checked", false);
			}
		})
	});

	// gounyu

	$(".gongyu .btn_submit").click(function() {
		if ($("input[type=checkbox].agree").prop("checked")) {
		} else {
			alert("입력한 정보는 실제 내용과 다름없습니다에 체크해주세요.");
			return false;
		}
	});

	// gounyu_view

	// $('.gongyu_slide').slick({
	// dots: false,
	// arrow: true,
	// infinite: true,
	// speed: 500,
	// cssEase: 'linear',
	// slidesToShow: 3,
	// slidesToScroll: 1
	// });

	// join

	$(".join .btn_submit").click(function() {
		if ($("#agree1").prop("checked") && $("#agree2").prop("checked")) {
		} else {
			alert("모든 항목에 동의해주세요.");
			return false;
		}
	});

	// my1-4

	$('.title').on('keyup', function() {
		if ($(this).val().length > 49) {
			alert("제목은 50자 이내로 작성 부탁드립니다.");
		}
	});

	$('.detail_box').attr("maxlength", 3600);

	var textarea = $('textarea[maxlength]');
	textarea.bind("keydown keyup click", function() {
		var max = $(this).attr('maxlength');
		if ($(this).val().length > max - 1) {
			$(this).val($(this).val().substr(0, max));
			alert("상세 설명은 3600자 이내로 작성 부탁 드립니다.");
		}
	});

	// my2

	$(".my2 .btn_submit").click(function() {
		$('.my2 input.content').each(function(n, element) {
			if ($(element).val() == '') {
				alert('모든 항목을 입력해주세요.');
				return false;
			}
		});
		return true;
	});

});
