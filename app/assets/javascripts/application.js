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
//$(document).on('ready', function(){
	///...

//})

$(document).ready(function() {
	//telling the server that this is where i'm at
			// $.post( '/api/currentLoc', pos, {
			// 	success: function(resp){
			// 		// handle server response
			// 	},
			// 	error: function(err){
			// 		//handle error
			// 	}
			// })
		//});

	// add loc info to select box
	navigator.geolocation.getCurrentPosition( 
		function(pos){
			pos = [ pos.coords.latitude, pos.coords.longitude ];
			$('form select:first option:first').val('[' + pos.join(',') + ']');
		});

	// L - Location S - Shipper
	// sqroot ( abs(LLat - SLat)^2 + abs(LLong-SLong)^2 ) = distance

  ////
	// copied from http://apneadiving.github.io/
	////
	//var directionsDisplay = new google.maps.DirectionsRenderer();
	var directionsService = new google.maps.DirectionsService();

	function calcRoute() {
		// get the browser location
		navigator.geolocation.getCurrentPosition(
			function(pos){
				var coords = pos.coords;
				//console.log(coords.latitude);
				//console.log(coords.longitude);
				var origin      = new google.maps.LatLng(coords.latitude, coords.longitude);

				for (var i=0; i<shippers.length; i++) {
		//pull shipper object out of array
		var shipper=shippers[i];
		//avoids async problem below
		var row = i;

		var destination = new google.maps.LatLng(shipper.latitude, shipper.longitude);
		var request = {
			origin:      origin,
			destination: destination,
			travelMode:  google.maps.TravelMode.DRIVING
		};
				// get the Google directions
				directionsService.route(request, function(response, status) {
					if (status == google.maps.DirectionsStatus.OK) {
						//directionsDisplay.setDirections(response);
						console.log(response.routes);
						var leg = response.routes[0].legs[0];
						console.log(leg.distance.text);
						$('.distance').eq(row).text(leg.distance.text);
						console.log(leg.duration.text);
						$('.duration').eq(row).text(leg.duration.text);
					}
				});

			}

		}
		);
}

calcRoute();

	// var handler = Gmaps.build('Google');
	// handler.buildMap({ internal: {id: 'directions'}}, function(){
	// 	directionsDisplay.setMap(handler.getMap());
	// });

	////
});
