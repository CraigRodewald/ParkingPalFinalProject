
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256" import="com.finalproject.parkpal.dto.Member"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCuK0lnSgOTVwMuBHXI22JfpSVfopATzqs"></script>

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>User Logged Successfully</title>
</head>

<body>
	<h1><center>
		<%Member currentUser = (Member)session.getAttribute("currentSessionUser");%>

		Welcome<strong>
		<%=currentUser.getFirstName() + " " + currentUser.getLastName()%></strong>
	</center></h1>
	<br>
	<form action="register" method="get">
	<input type="text" name="email" placeholder="Where are you going?"><br></form>
	
	<button onclick="getLocation()">Try It</button>
	<p id="demo"></p>
	<br>
	<iframe width='100%' height='500px' frameBorder='0' src='https://a.tiles.mapbox.com/v4/parkingproject.04393gl3/attribution,zoompan,zoomwheel,geocoder,share.html?access_token=pk.eyJ1IjoicGFya2luZ3Byb2plY3QiLCJhIjoiY2lvM2JibzZlMDA2aHZha2pqbXIwZ3o1YyJ9.yeAYc0MgmNQyeboOzEbDXg'></iframe>
	<!-- <center><div id="googleMap" style="width:500px;height:380px;"></div></center> -->
</body>

</html>