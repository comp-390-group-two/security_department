<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guard Login</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body style ="background-color: #006666;">
	<form  class="StudentForm" action="guardLoginServlet" method="get"> 
 <div class="container">
 	<div class="row">
 	<div class="col-md-3"></div>
 	<div class="col-md-6 col-xs-12">
 		
 			
 				<div class="jumbotron"style ="background-color: #003366;color:#ffffff;" >
 					<h3 class="text-center">Egerton University Security Department</h3>
 					<br>
 					<h6>Please enter your Security ID and Password</h6>
 					<br>
 					<div class="form-group">
 						<label class="control-label" for ="username">Security ID</label>
 					    <input type="text" name="security_id" class="form-control" placeholder="Security ID">

 					</div>
 					<div class="form-group">
 						<label class="control-label" for ="password">Password</label>
 					    <input type="password" name="password" class="form-control" placeholder="Password">

 					</div>
 					
 					<div class="pull-center">
 					<button type="submit" class="btn btn-primary">Log In</button>
 					
 					</div>
 				</div>
 			
 		</div>
 		
 	<div class="col-md-3"></div>
 	
 	</div>
 
                                                   
 	                              

</form>
	
</body>
</html>