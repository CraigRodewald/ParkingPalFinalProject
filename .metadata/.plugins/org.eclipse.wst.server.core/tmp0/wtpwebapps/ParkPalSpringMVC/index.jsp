<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<!-- Style sheets -->
<!-- <link rel="stylesheet" href="resources/css/style.css"> -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/images/">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCuK0lnSgOTVwMuBHXI22JfpSVfopATzqs"></script>

<title>ParkPal</title>
</head>

<body>
<div>
<!-- <nav class="navbar navbar-inverse">
  <div class="container">
    <p>ParkPal</p>
      <button onclick="window.location.href='loginPage'">Log in</button>
      <button onclick="window.location.href='register'">Sign up</button>
  </div>
</nav> -->

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">ParkPal</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="">Home</a></li>
      <li class="active"><a href="">About Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
</div>
  <div>
    <div>
      <!-- <div class="darkBackdrop"><p>ParkPal</p>
      <button onclick="window.location.href='loginPage'">Log in</button>
      <button onclick="window.location.href='register'">Sign up</button>
      </div> -->
        <center>
        
        <div></div>
          <h1>Park<strong>Pal</strong></h1>
          <h3>Find the best places to park in Detroit.</h3>
        </center>

        <!-- search form 6 -->
      <div class="button_box2">
        <center>
            
             <input id="address" class="subscribe-form form-control" value="" placeholder="Enter a City..."> <input
          id="submit" onclick="initMap()" type="button" class="btn btn-primary"
          value="Submit">
          
          
          
          
            			<!-- Use This Button -->
            <!-- <input id="address" value="" placeholder="Enter a City"> <input
          id="submit" onclick="window.location.href='userLogged'" type="button"
          value="Submit"> -->
          <!-- </form> -->
        </center>
      </div>
      </div>
      <div id="map"></div>
    </div>
        <script>
		var stringLat;
		var stringLong;
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
        	 stringLat = 42.335960;
     		 stringLong= -83.049712;
        	}
        	var urllocation = "userLogged?stringLat="+stringLat+"&stringLong="+stringLong;
			window.location.href=urllocation;
      		});
		}
	</script>
</body>

</html>