<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
<div class="row" >


<h2 style="color:"><center>EGERTON UNIVERSITY</center></h2>
<h3 style="color:"><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>
</div>



 <form action="AuthenticateSecurity" method="post">
<div class="container " style="width:40%">
<div class="card mx-auto" style="width: 50rem;">
  <img src="images/download.jpg" class="card-img-top mx-auto"  alt="...">
  
  <div class="card-body">
	  
	   
	
 	
 		
 					<div class="form-group">
 						<label class="control-label" for ="username">Uname</label>
 					    <input type="text" name="username" class="form-control" placeholder="Uname">

 					</div>
 					<div class="form-group">
 						<label class="control-label" for ="password">Password</label>
 					    <input type="password" name="password" class="form-control" placeholder="Password">

 					</div>
 					
 			
 					<button type="submit" class="btn btn-primary">SUBMIT</button>
 					
 					</div>
 				</div>
 			
 		</div>
 		
		 

  

</form>




</body>
</html>