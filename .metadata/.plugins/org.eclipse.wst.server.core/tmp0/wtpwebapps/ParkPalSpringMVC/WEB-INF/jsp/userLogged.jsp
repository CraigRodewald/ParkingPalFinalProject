<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256" import="com.finalproject.parkpal.dto.Member"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCuK0lnSgOTVwMuBHXI22JfpSVfopATzqs"></script>
	
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
	
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
	
	<title>ParkPal</title>
</head>

<body>
	<h1 id = "">
		<%
		Member currentUser = (Member)session.getAttribute("currentSessionUser");
		if(currentUser == null){
			
			
			out.print("Welcome <strong>guest</strong>");
			
		}else {
		
		
		

		out.print("Welcome <strong>" + currentUser.getFirstName() + ' ' + currentUser.getLastName() + "</strong>");
	
	}%>
	</h1>
	<br>
	  <div id="floating-panel">

      <input id="address" value="" placeholder="Enter a City"> <input
          id="submit" onclick="initMap()" type="button"
          value="Submit">
  </div>
  <div id="map"></div>
	<br>
	<!-- <iframe width='100%' height='500px' frameBorder='0' src='https://a.tiles.mapbox.com/v4/parkingproject.04393gl3/attribution,zoompan,zoomwheel,geocoder,share.html?access_token=pk.eyJ1IjoicGFya2luZ3Byb2plY3QiLCJhIjoiY2lvM2JibzZlMDA2aHZha2pqbXIwZ3o1YyJ9.yeAYc0MgmNQyeboOzEbDXg'></iframe> --> 
	<!-- <center><div id="googleMap" style="width:500px;height:380px;"></div></center> -->
	
	<div>
		<p id="redrawMap">
			<iframe width="100%" height="800px" src="//www.parkme.com/widget/?&header=false&lat=42.335960&lng=-83.049712&zoom=16&duration=120" frameborder="0" style="border: 1px solid silver;" allowfullscreen></iframe>
			<div style="width: 850px; font-size: 8pt; text-align:right; color:grey;"> Powered by <a style="color:grey !important; text-decoration:none;" href="http://www.parkme.com/">ParkMe</a>
		</div>
		</p>
	</div>
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
		var firstPart= '<iframe width="100%" height="700px" src="//www.parkme.com/widget/?&header=false&lat=';
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
          myFunction();
        	}
         else {
          	alert('Geocode was not successful for the following reason: ' + status);
        	}
        	
      		});
		}
	</script>
	
 </body>

</html>