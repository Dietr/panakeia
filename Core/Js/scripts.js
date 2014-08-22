$(document).ready(function() {
	// Stuff to do as soon as the DOM is ready;

	// a-img problem
	$('.content a > img').parent().addClass('linkedImage');

	// fix the z-index of Youtube-embeds
	$('iframe').each(function ()
	{
		var url = $(this).attr('src');

		var prefix = '?';
		if(url.indexOf('?') !== -1){} prefix = '&';

		$(this).attr('src',url + prefix + 'wmode=transparent');
	});

	$('body').addClass('js');
		var $menu = $('#navigation'),
		$menulink = $('.toggleMainNav');

	// Toggle navigation
	// -----------------
	$menulink.click(function() {
		$menulink.toggleClass('isExpanded');
		$menu.toggleClass('isExpanded');
		return false;
	});

	// ShareButtons
	// -----------------
	$('.shareButtons').show();
	$('.shareButtons').css('visibility','hidden');
	function ShowShare() {
		$.ajaxSetup({ cache: true });
		$.getScript('https://apis.google.com/js/plusone.js');
		$.getScript('http://platform.twitter.com/widgets.js');
		$('.shareButtons').css('visibility','visible');
		$(this).unbind();
	}
	$(window).scroll(ShowShare);
	$('.share a')
		.removeAttr('href')
		.css('cursor','pointer')
		.hover(ShowShare)
	;

	// DotDotDot
	// -----------------
	$(window).load(function() {
		$(".autoEllipsis").dotdotdot({
			ellipsis	: ' ... ',
			wrap			: 'word',
			watch			: true
		});
	}).resize();

});
