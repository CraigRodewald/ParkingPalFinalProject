<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<script src="<c:url value="resources/js/mailgun_validator.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
 <script src="//code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCuK0lnSgOTVwMuBHXI22JfpSVfopATzqs"></script>

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
	<style>
    .success{color:#2ECC40;}
    .error{color:#FF4136;}
    .warning{color:#FF851B;}
    </style>
<title>Login Page</title>
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">ParkPal</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="">Login</a></li>
      <li class="active"><a href="">About Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  <center>
	<h2>Member Login Page</h2>
	<form action="LoginServlet">

		<input type="text" id="email" class="subscribe-form form-control" name="email" placeholder="  Enter email here..."/>
		<div id="status"></div>
<!-- 		<label for="email">Email address</label><br>
        <input type="email" name="email" id="email">
        <div id="status"></div>
 -->		
		
		<input type="text" class="subscribe-form form-control" name="password" placeholder="  Enter password here..." /> 
		
		<input id="submit" type="submit" value="login" class="btn btn-primary">

	</form>
	
	<script>
      // document ready
      $(function() {

        // capture all enter and do nothing
        $('#email').keypress(function(e) {
          if(e.which == 13) {
            $('#email').trigger('focusout');
            return false;
          }
        });

        // capture clicks on validate and do nothing
        $("#validate_submit").click(function() {
          return false;
        });

        // attach jquery plugin to validate address
        $('#email').mailgun_validator({
          api_key: 'pubkey-83a6-sl6j2m3daneyobi87b3-ksx3q29',
          in_progress: validation_in_progress,
          success: validation_success,
          error: validation_error,
        });

      });



      // while the lookup is performing
      function validation_in_progress() {
        $('#status').html("<img src='loading.gif' height='16'/>");
      }



      // if email successfull validated
      function validation_success(data) {
        $('#status').html(get_suggestion_str(data['is_valid'], data['did_you_mean']));
      }



      // if email is invalid
      function validation_error(error_message) {
        $('#status').html(error_message);
      }



      // suggest a valid email
      function get_suggestion_str(is_valid, alternate) {
        if (is_valid) {
          var result = '<span class="success">Address is valid.</span>';
          if (alternate) {
            result += '<span class="warning"> (Though did you mean <em>' + alternate + '</em>?)</span>';
          }
          return result
        } else if (alternate) {
          return '<span class="warning">Did you mean <em>' +  alternate + '</em>?</span>';
        } else {
          return '<span class="error">Address is invalid.</span>';
        }
      }


    </script>
	
</body>
</html>
