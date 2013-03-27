$(document).ready(function() {
	// Stuff to do as soon as the DOM is ready;

	// a-img problem
	$('.content a > img').parent().addClass('linkedImage');

	// fix the z-index of Youtube-embeds
	$('iframe').each(function ()
	{
		var url = $(this).attr('src');

		var prefix = '?';
		if(url.indexOf('?') != -1) prefix = '&';

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
});
