// Code is Copyright 2012 Stephen "Rixius" Middleton
// Available under the GPLv3 or later at https://github.com/Rixius
jQuery(function($){

	$(document.body).addClass('js');

	var skills_ul = $('nav > ul').has('ul');
	var skills_li = skills_ul.find('> li');

	skills_li.addClass('close').find('span').click(function(e){
		e.preventDefault();
		var jT = $(e.target).parent();
		if (jT.hasClass('close')) {
			jT.removeClass('close').addClass('open')
			jT.find('ul').show();
		} else {
			jT.removeClass('open').addClass('close')
			jT.find('ul').hide();
		}
	});
	window.skills_ul = skills_ul
});
