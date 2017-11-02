$(function() {
	var speed = 600; //滑动的速度
	$(".f1").click(function() {
		$('body,html').animate({
			scrollTop: 274
		}, speed);
	})
	$(".f2").click(function() {
		$('body,html').animate({
			scrollTop: 1203
		}, speed);
	})
	$(".f3").click(function() {
		$('body,html').animate({
			scrollTop: 1859
		}, speed);
	})
	$(".f4").click(function() {
		$('body,html').animate({
			scrollTop: 2514
		}, speed);
	})

	$(window).scroll(function() {
		var st = $(window).scrollTop();

		if(st >= 550 && st < 1300) {
			$(".f1").addClass("active");
		} else {
			$(".f1").removeClass("active");
		}

		if(st >= 1300 && st < 2060) {
			$(".f2").addClass("active");
		} else {
			$(".f2").removeClass("active");
		}

		if(st >= 2060 && st < 2650) {
			$(".f3").addClass("active");
		} else {
			$(".f3").removeClass("active");
		}

		if(st >= 2650 && st < 3380) {
			$(".f4").addClass("active");
		} else {
			$(".f4").removeClass("active");
		}

	});
});