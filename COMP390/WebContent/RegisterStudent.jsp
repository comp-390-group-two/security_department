<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>


<div  class="row">

<div class="col-sm-6">

<h3 class="text-center">Egerton University Security Department</h3>
<h4 style="color:red">${Message}</h4>
<button type="button" class="btn btn-lg btn-primary" style="height :200px;width:250px" data-toggle="modal" data-target="#mymodal">REGISTER STUDENT</button>

</div>


<div  class="modal fade" id="mymodal">
  
				<div class="modal-dialog">
					<div style="background-color:#009999" class="modal-content">

						<div class="modal-header">
						
							<h3 style="color:#ffffff;"><center>Egerton University Security Department</center></h3>
							<h3 style="color:#ffffff;"><center>Register new Students</center></h3>
							
						</div>
						
      			 		<form action="register_student" method="post">
							<div  class="modal-body">
						
								<div class="form-group">
 									<label style="color:#ffffff;class="control-label" for ="regno">REGNO</label>
 					    			<input type="text" name="regno" class="form-control" placeholder="X_XXXX_XX">

 								</div>
 								
 								<div class="form-group">
 									<label style="color:#ffffff;class="control-label" for ="name">NAME</label>
 					    			<input type="text" name="name" class="form-control" placeholder="NAME">

 								</div>
 								
 								
								
								<div class="form-group">
									
									<label style="color:#ffffff;class="control-label" for ="venue">Faculty</label>
 					   			 	<select class="form-control" id="faculty" name=faculty>
 					   			 	<option>Science</option>
 					   			 	<option>FEDCOS</option>
 					   			 	<option>FASS</option>
 					   			 	<option>FERD</option>
 					   			 	</select>
								</div>
								
 								
						
							
								<div class="form-group">
									
									<label style="color:#ffffff"class="control-label" for ="password">ENTER  PASSWORD</label>
 					   			 	<input type="password" name="password" class="form-control" placeholder="default password" >
								</div>

								<div class="form-group">
									
									<label style="color:#ffffff"class="control-label" for ="password">RENTER PASSWORD</label>
 					   			 	<input type="password" name="password2" class="form-control" placeholder="default password" >
								</div>
								
 
 								
 								
							</div>
						

							<div class="modal-footer">
								<div class="pull-center">
 									<button type="submit" class="btn btn-primary">SUBMIT</button>
 					
 								</div>	
						
							</div>
					
					</form>
	</div>


</div>
</div>
</div>
</body>
</html>