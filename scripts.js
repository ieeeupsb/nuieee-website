$(document).ready(function() {
	$('.nav-link').click(function(event) {
		$('html:not(:animated),body:not(:animated)').animate({
			scrollTop: $($(this).attr('href')).offset().top
		}, 500);

		window.location.hash = $(this).attr('href');
		event.preventDefault();
	});

	  $('.popbox').popbox();
});