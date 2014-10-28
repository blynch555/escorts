// Flaty
// Bootswatch
// loader.js

//= require twitter/bootstrap/transition
//= require twitter/bootstrap/alert
//= require twitter/bootstrap/button
//= require twitter/bootstrap/carousel
//= require twitter/bootstrap/collapse
//= require twitter/bootstrap/dropdown
//= require twitter/bootstrap/modal
//= require twitter/bootstrap/tooltip
//= require twitter/bootstrap/popover
//= require twitter/bootstrap/scrollspy
//= require twitter/bootstrap/tab
//= require twitter/bootstrap/affix

$('.preview_caption').hide();

$('div.preview_div').mouseenter(function(){

	$(this).find(".preview_caption").fadeIn();
}).mouseleave(function(){

	$(this).find(".preview_caption").fadeOut();
});

$('#signIn, #signUp').click(function(e){

	//alert("click");
	$.ajax({
		url: $(e.target).attr("href"),
		dataType: 'html', 

	}).done(function(data){
		
		if(! $('#loginBox').length )
			$('body').append('<div class="box col-md-4 col-md-offset-7" id="loginBox"></div>');
		
		$('#loginBox').empty().hide().append(data).slideDown('fast');

	});
	return false;
});

$(function(){
		$('.alert').delay(1500).hide(600);
});
