<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

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

<div class="row">

<div class="col-md-4">

<iframe src="http://free.timeanddate.com/clock/i6r7xlta/n170/szw110/szh110/hoc009/hbw0/hfc9ff/cf100/hnc0f9/hwc000/fan2/fas16/fac555/fdi60/mqcf0f/mqs4/mql2/mqw4/mqd78/mhcf90/mhs4/mhl3/mhw4/mhd78/mmv0/hhc990/hhs2/hmc990/hms2/hscf09" frameborder="0" width="110" height="110"></iframe>

</div>
<div class="col-md-8">
<h2 >EGERTON UNIVERSITY</h2>
<h3 >EGERTON UNIVERSITY SECURITY DEPARTMENT</h3>
</div>
</div>
<div class="modal fade" id="mymodal2">
<div class="modal-dialog"> 
<div class="modal-header">
</div>

<div class="modal-body">

 <form action="AdGuaRDservlet" method="post">
<div class="container " style="width:40%">
<div class="card mx-auto" style="width: 50rem;">
 <img src="" class="card-img-top mx-auto"  alt="...">
  
  <div class="card-body">
	  
	   
	 <div class="jumbotron" style="height:60% ;width:120% ;background-color:#2e829e;"> 
	 
	 	<h2  style= "color:#ffffff"><center>Register New Guard  Here </center></h2>
	 				<h5 style="color:red"> ${Message} </h5>
 	
 		
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff" date"  >DATE</label>
 					    <input type="date" name="date" class="form-control" style="padding:30px"  placeholder="date">

 					</div>
 					
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff" for ="name"  >FULL NAME</label>
 					    <input type="text" name="name" class="form-control" style="padding:20px" placeholder="FULL NAMES">

 					</div>
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff"for ="ssn" >SSN</label>
 					    <input type="text" name="ssn" class="form-control" style="padding:20px" placeholder="SSN">

 					</div>
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff"for ="phone_no" >PHONE NUMBER</label>
 					    <input type="number" name="phone_no" class="form-control" placeholder="07...">

 					</div>
 					
 					
 					
 					
 					
 			
 					<button type="submit" class=" form-control btn btn-primary"  style= "background-color: #00394d">ADD GUARD</button>
 					
 					
 					</div>
 				</div>
 			
 		</div>
 		</div>
		 

  

</form>

	</div>	
	
	<div class="modal-footer">
	
	</div>
	</div>
	</div>		
			  
			  

</body>
</html>