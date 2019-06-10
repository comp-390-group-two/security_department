<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>StudentsLogin</title>
</head>
<body style ="background-color: #006666;"><br>
<img src="images/download.jpg"  height="100px" width="100px ">
<h2 style="color:#ffffff;">Egerton University</h2>
<div>




<form  class="StudentForm" action="ll" method="post"> 
 <div class="container">
 	<div class="row">
 	<div class="col-md-3"></div>
 	<div class="col-md-6 col-xs-12">
 		
 			
 				<div class="jumbotron"style ="background-color: #003366;color:#ffffff;" >
 					<h3 class="text-center">Egerton University Security Department</h3>
 					<br>
 					<h6>Please enter your RegNumber and Password</h6>
 					<br>
 					<div class="form-group">
 						<label class="control-label" for ="username">RegNumber</label>
 					    <input type="text" name="username" class="form-control" placeholder="RegNumber">

 					</div>
 					<div class="form-group">
 						<label class="control-label" for ="password">Password</label>
 					    <input type="password" name="password" class="form-control" placeholder="Password">

 					</div>
 					
 					<div class="pull-center">
 					<button type="submit" class="btn btn-primary"><i class="fa fa-lock"></i>&nbsp;LOGIN</button>
 					<a href="index.jsp" class="btn btn-primary">&nbsp;BACK</a>
 					</div>
 				</div>
 			
 		</div>
 		
 	<div class="col-md-3"></div>
 	
 	</div>
 
                                                   
 	                              

</form>


</div>


</body>
</html> 