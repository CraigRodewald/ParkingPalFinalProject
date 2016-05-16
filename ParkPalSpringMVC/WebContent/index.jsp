<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <!-- Animation -->
    <link rel="stylesheet" href="resources/css/animate.css">
    <!-- Bxslider CSS -->
    <link rel="stylesheet" href="resources/css/bxslider.css">
    <!-- Template styles-->
    <link rel="stylesheet" href="resources/css/style.css">
    <!-- Responsive styles-->
    <link rel="stylesheet" href="resources/css/responsive.css">
    
<script src='https://api.mapbox.com/mapbox-gl-js/v0.18.0/mapbox-gl.js'></script>
<link href='https://api.mapbox.com/mapbox-gl-js/v0.18.0/mapbox-gl.css' rel='stylesheet' />

<title>ParkPal</title>
</head>

<body>
  <div >
    <div >
      <div class="darkBackdrop"><p>ParkPal</p>
      <button onclick="window.location.href='loginPage'">Log in</button>
      <button onclick="window.location.href='register'">Sign up</button>
      </div>
        <center>
          <h1>ParkPal</h1>
          <p>Find the best places to park in Detroit.</p>
        </center>

        <!-- search form 6 -->
      <div class="button_box2">
        <center>
            <!-- <form class="form-wrapper-2 cf">
              <input id="address" type="text" placeholder="Enter location here..." required>
            <button type="submit">Search</button> -->
            
            <input id="address" value="" placeholder="Enter a City"> <input
          id="submit" onclick="window.location.href='userLogged'" type="button"
          value="Submit">
          <!-- </form> -->
        </center>
      </div>
      </div>
    </div>
    	<!-- <img src="resources/images/bx-slider/NewMapBoxBackdrop.jpg" /> -->
        <script>
		var stringLat;
		var stringLong;
	</script>
	
	<script>
		window.addEventListener("resize", myFunction);
		var x = 0;
		var lat = stringLat;
		var lng = stringLong;
		console.log(stringLat, stringLong);
		var firstPart= '<iframe width="100%" height="600px" src="//www.parkme.com/widget/?&header=false&lat=';
		var middlePart= '&lng=';
		var lastPart='&zoom=16&duration=120" frameborder="0" style="border: 1px solid silver;" allowfullscreen></iframe><div style="width: 850px; font-size: 8pt; text-align:right; color:grey;"> Powered by <a style="color:grey !important; text-decoration:none;" href="http://www.parkme.com/">ParkMe</a></div>';
		
		function myFunction() {
			var lat = stringLat;
			var lng = stringLong;
			console.log(stringLat, stringLong);
    		document.getElementById("redrawMap").innerHTML = firstPart.concat(lat,middlePart,lng,lastPart);
		}
	</script>
	
	<script>
		function initMap() {
	    	var map = new google.maps.Map(document.getElementById('map'), {
	      	zoom: 4,
	      	center: {lat: 39.83, lng: -98.58}
	    	});
	    
	    	var geocoder = new google.maps.Geocoder();
	    
	   		document.getElementById('submit').addEventListener('click', function() {
	      	geocodeAddress(geocoder, map);
	    	});
	   	
	  	}
  
    	function geocodeAddress(geocoder, resultsMap) {
     		var address = document.getElementById('address').value;
     	
    	 	geocoder.geocode({'address': address}, function(results, status) {

        	if (status === google.maps.GeocoderStatus.OK) {
          		resultsMap.setCenter(results[0].geometry.location);
          		var marker = new google.maps.Marker({

            	map: resultsMap,
            	position: results[0].geometry.location
          	});


          var lat = results[0].geometry.location.lat();
          var lon = results[0].geometry.location.lng();
          console.log("Longitude",lon,"latitude", lat);
          stringLong = lon.toString();
          stringLat = lat.toString();
        	}
         else {
          	alert('Geocode was not successful for the following reason: ' + status);
        	}
        	
      		});
		}
	</script>
</body>

</html>