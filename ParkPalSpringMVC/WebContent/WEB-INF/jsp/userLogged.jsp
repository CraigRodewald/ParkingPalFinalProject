
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256" import="com.finalproject.parkpal.dto.Member"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(42.336111, -83.050556),
    zoom:16,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>User Logged Successfully</title>
</head>

<body>

	<h1><center>
		<%
			Member currentUser = (Member)session.getAttribute("currentSessionUser");
		%>

		Welcome<strong>
		<%=currentUser.getFirstName() + " " + currentUser.getLastName()%></strong>
	</center></h1>
	<br>
	<br>
	<center><div id="googleMap" style="width:500px;height:380px;"></div></center>

</body>

</html>