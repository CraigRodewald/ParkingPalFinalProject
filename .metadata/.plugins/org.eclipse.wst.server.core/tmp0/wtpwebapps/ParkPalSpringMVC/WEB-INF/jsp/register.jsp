<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCuK0lnSgOTVwMuBHXI22JfpSVfopATzqs"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>ParkPal Sign Up Page</title>

</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">ParkPal</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="">Sign up</a></li>
      <li class="active"><a href="">About Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<center>
<h2>New Member Sign Up</h2>
<h3>Provide all the fields for registration.</h3>
<form action="register" method="get">
<input type="text" class="subscribe-form form-control" name="first_name" placeholder=" Enter first name...">
<input type="text" class="subscribe-form form-control" name="last_name" placeholder=" Enter last name...">
<input type="text" class="subscribe-form form-control" name="email" placeholder=" Enter email...">
<input type="password" class="subscribe-form form-control" name="password" placeholder=" Enter password...">
<input type="submit" value="Register" class="btn btn-primary">
</form>
<br>
If you are already a registered user, please <a href="loginPage">login</a>.
</center>
</body>
</html>