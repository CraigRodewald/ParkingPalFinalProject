<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="/reosurces/bootstrap/assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome -->
    <link rel="stylesheet" href="/reosurces/bootstrap/css/font-awesome.min.css">
    <!-- Animation -->
    <link rel="stylesheet" href="/reosurces/bootstrap/css/animate.css">
    <!-- Bxslider CSS -->
    <link rel="stylesheet" href="/reosurces/bootstrap/css/bxslider.css">
    <!-- Template styles-->
    <link rel="stylesheet" href="/reosurces/bootstrap/css/style.css">
    <!-- Responsive styles-->
    <link rel="stylesheet" href="/reosurces/bootstrap/css/responsive.css">
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Login Page</title>
</head>

<body>
  <center>
	<h2>Member Login Page</h2>
	<form action="LoginServlet">

		<input type="text" name="email" placeholder="  Enter email here..."/>
		<br>
		<br>
		<input type="text" name="password" placeholder="  Enter password here..." /> 
		<br>
		<br>
		<input type="submit" value="login">
		
		  <form class="subscribe-form">
                                <input type="text" class="form-control wow bounceInLeft" placeholder="your email">
                                <button class="btn btn-primary submit-input wow bounceInRight">Subscribe now</button>
                            </form>

	</form>
	<br> If you are a new user, please
	<a href="/ParkPalSpringMVC/register">register</a>.
  </center>
</body>
</html>