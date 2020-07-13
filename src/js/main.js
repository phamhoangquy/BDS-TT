$(document).ready(function () {
	newsHomeSlide();
	swiperInit();
	newsSlide();
	locationProject();
	newSuncity();
	DataBG();
	toggleMobileMenu();
	mappingMenu();
	mappingContact();
	mappingSearch();
	setBackground();
	coutingNumber();
	tabActive();
	hideTool();
});

//Check if windows size large then 1024 then these function will be execute
if ($(window).width() > 1024) {
	const $menu = $(".searchbox");
	$(document).mouseup(e => {
		if (
			!$menu.is(e.target) && // if the target of the click isn't the container...
			$menu.has(e.target).length === 0
		) {
			// ... nor a descendant of the container
			$menu.removeClass("active");
		}
	});
}



function tabActive() {
	$(".tab-navigation li a").on("click", function () {
		$(this)
			.parents(".tab-navigation")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}

function hideTool() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 50) {
			$("#block__tool").addClass("active");
		} else {
			$("#block__tool").removeClass("active");
		}
	});
}

function setBackground() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}

function swiperInit() {
	var homerSwiper = new Swiper(".home-banner .swiper-container", {
		// Optional parameters
		speed: 1205,
		slidesPerView: 1,
		autoplay: {
			delay: 3000
		},
		pagination: {
			el: ".home-banner-pagination",
			type: "bullets",
			clickable: "true"
		}
	});
	
	var brandSwiper = new Swiper(".brand-display .swiper-container", {
		// Optional parameters
		speed: 1000,

		autoplay: {
			delay: 2000
		},
		navigation: {
			nextEl: '.brand-display .nav-arrow-next',
			prevEl: '.brand-display .nav-arrow-prev',
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 100
			},
			400: {
				slidesPerView: 1,
				spaceBetween: 100
			},
			480: {
				slidesPerView: 1,
				spaceBetween: 100
			},
			768: {
				slidesPerView: 4,
				spaceBetween: 100
			},
			1025: {
				slidesPerView: 4,
				spaceBetween: 100
			},
			1440: {
				slidesPerView: 6,
				spaceBetween: 100
			},
			1600: {
				slidesPerView: 6,
				spaceBetween: 100
			}
		},

	});
}
function newsSlide(){
	var brandSwiper = new Swiper(".news-silde .swiper-container", {
		// Optional parameters
		speed: 1000,

		autoplay: {
			delay: 2000
		},
		navigation: {
			nextEl: '.news-silde .nav-arrow-next',
			prevEl: '.news-silde .nav-arrow-prev',
		},
		// breakpointsInverse: true,
		spaceBetween: 30,
		breakpoints: {
			320: {
				slidesPerView: 1,
			
			},
			480: {
				slidesPerView: 1,
				
			},
			768: {
				slidesPerView: 1,
			
			},
			1025: {
				slidesPerView: 3,
				
			},
			1200: {
				slidesPerView: 3,
			},
			1440: {
				slidesPerView: 3,
			},
			1600: {
				slidesPerView: 3,
			},
		},

	});
	
	var prizeSwiper = new Swiper(".prize .swiper-container", {
		// Optional parameters
		speed: 1000,
	
		autoplay: {
			delay: 2000
		},
		navigation: {
			nextEl: '.prize .nav-arrow-next',
			prevEl: '.prize .nav-arrow-prev',
		},
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 100
			},
			400: {
				slidesPerView: 1,
				spaceBetween: 100
			},
			480: {
				slidesPerView: 1,
				spaceBetween: 100
			},
			768: {
				slidesPerView: 2,
				spaceBetween: 100
			},
			1025: {
				slidesPerView: 4,
				spaceBetween: 100
			},
			1440: {
				slidesPerView: 6,
				spaceBetween: 100
			},
			1600: {
				slidesPerView: 6,
				spaceBetween: 100
			}
		},
	
	});
}


function newsHomeSlide(){
	var brandSwiper = new Swiper(".home-news .swiper-container", {
		// Optional parameters
		speed: 1000,

		autoplay: {
			delay: 2000
		},
		navigation: {
			nextEl: '.home-news .nav-arrow-next',
			prevEl: '.home-news .nav-arrow-prev',
		},
		// breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
				
			},
			480: {
				slidesPerView: 1,
				
			},
			768: {
				slidesPerView: 1,
				
			},
			1025: {
				slidesPerView: 3,
				spaceBetween: 50
			},
			1200: {
				slidesPerView: 3,
				
			},
			1440: {
				slidesPerView: 3,
			},
			1600: {
				slidesPerView: 3,
			},
		},

	});
}

function locationProject(){
	var brandSwiper = new Swiper(".location-project .swiper-container", {
		// Optional parameters
		speed: 1000,

		autoplay: {
			delay: 2000
		},
		navigation: {
			nextEl: '.location-project .nav-arrow-next',
			prevEl: '.location-project .nav-arrow-prev',
		},
		// breakpointsInverse: true,
		spaceBetween: 50,
		breakpoints: {
			320: {
				slidesPerView: 1,
			
			},
			480: {
				slidesPerView: 1,
				
			},
			768: {
				slidesPerView: 1,
			
			},
			1025: {
				slidesPerView: 4,
				
			},
			1200: {
				slidesPerView: 4,
			},
			1440: {
				slidesPerView: 4,
			},
			1600: {
				slidesPerView: 4,
			},
		},

	});
}
function newSuncity(){
	var brandSwiper = new Swiper(".text-utilities .swiper-container", {
		// Optional parameters
		speed: 1000,

		autoplay: {
			delay: 2000
		},
		navigation: {
			nextEl: '.text-utilities .nav-arrow-next',
			prevEl: '.text-utilities .nav-arrow-prev',
		},
		// breakpointsInverse: true,
	});
}
function toggleMobileMenu() {
	$(".mobile-toggle").on("click", function () {
		$(".mobile-wrapper").toggleClass("active");
	});
}

function mappingMenu() {
	return new MappingListener({
		selector: ".nav-menu-primary",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".wrapper-bottom",
		desktopMethod: "appendTo",
		breakpoint: 1025
	}).watch();
}

function mappingContact() {
	return new MappingListener({
		selector: ".contact-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".mail-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}

function mappingSearch() {
	return new MappingListener({
		selector: ".search-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}


function watchMoreDetail() {
	let watchMore = $(".product-detail-wrapper .btn-view-more");
	let article = $(".product-detail-wrapper  article");
	let maxHeight = 400;
	let height = 0;
	let cotent = $(".product-detail-wrapper  article .fullcontent");
	let pArray = $(".product-detail-wrapper  article .fullcontent").children();
	watchMore.on("click", function () {
		if ($(this).parents('article').hasClass('active')) {
			cotent.css({
				"max-height": 400 + "px"
			});
			article.removeClass("active");
			$(this).removeClass('open')
		} else {
			$.each(pArray, function (indexInArray, valueOfElement) {
				// height.push(element.height());

				height += $(valueOfElement).height();
			});
			cotent.not($(this).parents("article").find('.fullcontent')).css({
				"max-height": 400 + "px"
			});
			article.not($(this).parents("article")).removeClass("active");
			$(this).addClass('open')
			$(this).parents("article").find('.fullcontent').css({
				"max-height": maxHeight + height + "px"
			});
			$(this).parents("article").addClass("active");
			$("html, body").animate({
				scrollTop: $(this).parents('.fullcontent').offset().top - 20
			});
		}
	});


}

function sideNavigation() {
	let trigger = $('.side-navigation-wrapper .side-navigation .title em');
	let close = $('.side-navigation-wrapper .side-navigation  .nav-sub');
	let parent = $('.side-navigation-wrapper .side-navigation  li');
	trigger.on('click', function (e) {
		e.preventDefault();
		if (!$(this).parent().parent().hasClass("open")) {
			close.slideUp();
			$(this).parent().next().slideToggle();
			parent.removeClass('open')
			$(this).parents('li').addClass('open')
		} else {
			$(this).parent().next().slideToggle();
			parent.removeClass('open')
		}
	})

}

function coutingNumber(){
	$('.counter').each(function() {
		var $this = $(this),
			countTo = $this.attr('data-count');
			$({ countNum: $this.text()}).animate({
				countNum: countTo
			},
		{
		duration: 5000,
		easing:'linear',
		step: function() {
		$this.text(Math.floor(this.countNum));
		},
		complete: function() {
			$this.text(this.countNum);
			//alert('finished');
		}
	
		});
	});
}



function appendComment() {
	if ($("body").hasClass('product-detail-page')) {
		$('.commentpanel').appendTo('.product-detail-commment')
	}
}