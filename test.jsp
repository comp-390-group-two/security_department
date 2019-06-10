<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div  class="modal fade" id="mymodal">
				<div class="modal-dialog">
				
					<div style="background-color:#009999" class="modal-content">

						<div class="modal-header">
						
							<h3 style="color:#ffffff;"><center>Egerton University Security Department</center></h3>
							<h3 style="color:#ffffff;"><center>Register any complaint here</center></h3>
							
						</div>
      			 <form action="report_case2" method="post">
						<div  class="modal-body">
						
							<div class="form-group">
									
									<label style="color:#ffffff"class="control-label" for ="people_involved">Who are involved</label>
 					   			 	<input type="text" name="people_involved" class="form-control" placeholder="people_involvedr">
								</div>

								<div class="form-group">
									
									<label style="color:#ffffff"class="control-label" for ="occurance">What happened</label>
 					   			 	<input type="text" name="occurance" class="form-control" placeholder="occurance">
								</div>

								<div class="form-group">
									
									<label style="color:#ffffff;class="control-label" for ="venue">Location of occurance</label>
 					   			 	<select class="form-control" id="venue">
 					   			 	<option>Buruburu</option>
 					   			 	<option>Fedcos</option>
 					   			 	<option>CBD</option>
 					   			 	<option>Tatton</option>
 					   			 	<option>Field</option>
 					   			 	
 					   			 	</select>
								</div>

								<div class="form-group">
									
									<label style="color:#ffffff; class="control-label" for ="time_of_occurance">When did it happen</label>
 					   			 	<input type="text" name="time_of_occurance" class="form-control" placeholder="time_of_occurance">
								</div>

								<div class="form-group">
									
									<label style="color:#ffffff;class="control-label" for ="reason_of_accused">Why think of the accused</label>
 					   			 	<input type="text" name="reason_of_accused" class="form-control" placeholder="Reason_of_accused">
								</div>
 
 								<div class="form-group">
 									<label style="color:#ffffff;class="control-label" for ="time_stamp">Date of Occurance</label>
 					    			<input type="date" name="time_stamp" class="form-control" placeholder="time_stamp">

 								</div>
 								
 								<div class="pull-center">
 									<input type="button" class="btn btn-primary">SUBMIT</button>
 					
 								</div>
							
 					    </div>

						

						<div class="modal-footer">
							
						</div>
						
					</div>
	</div>



</div>
</form>

</body>
</html>