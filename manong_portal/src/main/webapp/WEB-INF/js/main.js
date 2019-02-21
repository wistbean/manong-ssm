var lb_color = ['#D6E0E1', '#FA5A7E', '#E8E8E8', '#F4E0D5', '#F2E4DB', '#E8E8E8']
var lb_flag = 0;
var mySwiper = new Swiper('.swiper-container', {
	autoplay: true,
	loop: true,
	effect: 'fade',
	watchSlidesProgress: true,
	// 如果需要分页器
	pagination: {
		el: '.swiper-pagination',
	},
	on: {
		slideChangeTransitionStart: function() {
			$('.lunbo').css({
				backgroundColor: lb_color[lb_flag]
			});
			lb_flag++;
			if(lb_flag > 5) {
				lb_flag = 0;
			}
			if(lb_flag == 2 || lb_flag == 4) {
				$('.lbfd').css({
					display: 'block'
				});
			} else {
				$('.lbfd').css({
					display: 'none'
				});
			}
		},
	}
});
$(function() {
	$(window).on('scroll', function() {
		//顶部搜索栏
		if(scrollY > $('.content').offset().top) {
			$('.nav-search').slideDown();
		} else {
			$('.nav-search').slideUp();
		}
		//侧边栏
		if(scrollY > $('.con_logos').offset().top) {
			$('.nav-left').slideDown();
		} else {
			$('.nav-left').slideUp();
		}
		if(scrollY > $('.tmall_cs').offset().top - screenY) {
			$('.nav-left li').eq(1).addClass('tmall_cs_color');
		} else if(scrollY < $('.tmall_gj').offset().top - screenY) {
			$('.nav-left li').eq(1).addClass('tmall_gj_color');
		}
	})
	$('.nav-left li:last-child').on('click', function() {
		ScrollAdm(0);
	});
	$('.nav-left li').eq(1).on('click', function() {
		ScrollAdm($('.tmall_cs').offset().top);
	});
	$('.nav-left li').eq(2).on('click', function() {
		ScrollAdm($('.tmall_gj').offset().top);
	});
	$('.nav-left li').eq(3).on('click', function() {
		ScrollAdm($('.tmall_mlrs').offset().top);
	});
	$('.nav-left li').eq(4).on('click', function() {
		ScrollAdm($('.tmall_cdkw').offset().top);
	});
	$('.nav-left li').eq(5).on('click', function() {
		ScrollAdm($('.tmall_jjsh').offset().top);
	});
	$('.nav-left li').eq(6).on('click', function() {
		ScrollAdm($('.tmall_dzac').offset().top);
	});
	$('.nav-left li').eq(7).on('click', function() {
		ScrollAdm($('.tmall_hwcx').offset().top);
	});

	function ScrollAdm(target) {
		target = target - 80;
		var current = scrollY;
		clearInterval(timer);
		var timer = setInterval(function() {
			var yy = current - target;
			var speed = yy / 10;
			if(yy > 5 || yy < -5) {
				current = current - speed;
				speed = yy / 10;
				window.scrollTo(0, current);
				if(yy < 10 && yy > -10) {
					console.log('233');
					window.scrollTo(0, target);
					yy = 0;
				}
			} else {
				console.log('233');
				clearInterval(timer);
			}
		}, 10);
	}
});