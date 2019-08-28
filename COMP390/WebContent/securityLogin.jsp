<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REPORTDESK SECURITY OFFICER</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body style ="background-color: #006666; color:#ffffff"">
<div class="row" >


<h2 style="color:"><center>EGERTON UNIVERSITY</center></h2>
<h3 style="color:"><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>
</div>



 <form action="AuthenticateSecurity" method="post">
<div class="container " style="width:40%">
<div class="card mx-auto" style="width: 50rem;">
 
  
  <div class="card-body">
	  
	   
	
 	
 		<div class="jumbotron"style ="background-color: #003366;color:#ffffff;height:120% ;width:120%" >
 					<div class="form-group">
 					<h4>Enter your username and password</h4>
 						<label class="control-label" style="padding:10px"for ="username">Uname</label>
 					    <input type="text" name="username" style="padding:20px" class="form-control" placeholder="Uname">

 					</div>
 					<div class="form-group">
 						<label class="control-label"style="padding:10px" for ="password">Password</label>
 					    <input type="password" name="password"style="padding:20px" class="form-control" placeholder="Password">

 					</div>
 					
 			
 					<button type="submit" class="btn btn-primary">LOGIN</button>
 					<a href="index.jsp" class="btn btn-primary">&nbsp;BACK</a>
 					
 					</div>
 				</div>
 				</div>
 			
 		</div>
 		
		 

  

</form>




</body>
</html>