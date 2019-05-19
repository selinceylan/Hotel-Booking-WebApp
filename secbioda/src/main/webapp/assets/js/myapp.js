$(function() {

	// solving the active menu problem
	switch (menu) {

	case 'List Your Property':
		$('#listyourproperty').addClass('active')
		break;
	case 'Register':
		$('#register').addClass('active')
		break;
	case 'Sign In':
		$('#signin').addClass('active')
		break;
	default:
		$('#home').addClass('active')
		break;

	}

});











