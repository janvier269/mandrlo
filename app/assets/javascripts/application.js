// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
$(document).on('ready', function(){
	///...

})

$(document).ready(function() {
	//telling the server that this is where i'm at
	navigator.geolocation.getCurrentPosition( 
		function(pos){
			$.post( '/api/currentLoc', pos, {
				success: function(resp){
					// handle server response
				},
				error: function(err){
					//handle error
				}
			})
		});

	// add loc info to select box
	navigator.geolocation.getCurrentPosition( 
		function(pos){
			pos = [ pos.coords.latitude, pos.coords.longitude ];
			$('form select:first option:first').val('[' + pos.join(',') + ']');
		});
});

$(function () {

});
