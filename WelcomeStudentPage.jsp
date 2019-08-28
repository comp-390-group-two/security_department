<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>








</script>
</head>
<body style="background-color:  #006666;">
/*
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache"); 


if (session.getAttribute("userOne")==null){
	response.sendRedirect("login.jsp");

}

%>



<div class="row">
<div class="col-md-4">


<img src="images/download.jpg"  height="100px" width="100px ">


</div>

<div class="col-md-8">
<h2 style="color:#ffffff">EGERTON UNIVERSITY</h2>
<h3 style="color:#ffffff">EGERTON UNIVERSITY SECURITY DEPARTMENT</h3>


<form action="Logout">

<input style="float:right " type="submit" value="LOGOUT">


</form>

</div>
</div>



<h4 style="color:#ffffff">welcome ${userOne} </h4>

<h4 style="color:red"> ${Message} </h4>

<br><br>

<div  class="row">

<div class="col-sm-4">

<button type="button" class="btn btn-lg btn-primary" style="height :200px;width:250px" data-toggle="modal" data-target="#mymodal">REPORT CASE</button>

</div>


<div  class="modal fade" id="mymodal">
				<div class="modal-dialog">
					<div style="background-color:#009999" class="modal-content">

						<div class="modal-header">
						
							<h3 style="color:#ffffff;"><center>Egerton University Security Department</center></h3>
							<h3 style="color:#ffffff;"><center>Register any complaint here</center></h3>
							
						</div>
						
      			 		<form action="report_case" method="post">
							<div  class="modal-body">
						
								<div class="form-group">
 									<label style="color:#ffffff;class="control-label" for ="time_stamp">Date of Occurance</label>
 					    			<input type="date" name="date_of_occurance" class="form-control" >

 								</div>
 								
 								
 								
 								
 								<div class="form-group">
									
									<label style="color:#ffffff;class="control-label" for ="venue">Location of occurance</label>
 					   			 	<select class="form-control" id="venue" name=venue>
 					   			 	<option>Buruburu</option>
 					   			 	<option>Fedcos</option>
 					   			 	<option>CBD</option>
 					   			 	<option>Tatton</option>
 					   			 	<option>Field</option>
 					   			 	
 					   			 	</select>
								</div>
								
								<div class="form-group">
									
									<label style="color:#ffffff; class="control-label" for ="specifictime_of_occurance">What time did it happen</label>
 					   			 	
 					   			 	<input  type="time" class="form-control" id="specifictime_of_occurance" name=specifictime_of_occurance>
 
 					   			 	
								</div>
 								
						
							
								<div class="form-group">
									
									
									<textarea name="occurance" rows="4" cols="75" placeholder="What happened"></textarea>
 					   			 	
								</div>

								<div class="form-group">
									
									<label style="color:#ffffff"class="control-label" for ="people_involved">Who are involved</label>
 					   			 	<input type="text" name="people_involved" class="form-control" placeholder="people_involved">
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


<div class="col-sm-4">

<button type="button" class="btn btn-lg btn-primary" style="height :200px; width:250px" data-toggle="modal" data-target="#mymodal2">REQUEST CLEARANCE</button>
																					
 </div>

<div class="modal fade" id="mymodal2">
<div class="modal-dialog"> 
<div  style="background-color:#009999" class="modal-content">

<div class="modal-header">

</div>
<form action="reason" method="post">
<div class="modal-body">


	<div class="form-group">
									
		<label style="color:#ffffff" class="control-label" for ="reason_of_clearance">Why do you want to clear</label>
 		<select class="form-control" id="reason" name="reason">
 					   			 	<option>Study Completion</option>
 					   			 	<option>SUEU Election</option>
 					   			 	<option>Transfer</option>
 					   			 	<option>Others</option>
 					   			 	
 					   			 	
 		</select>
 		
 		
 	
	</div>
	<div class="pull-center">

 					
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
<div class="col-sm-4">

<button type="button" class="btn btn-lg btn-primary" style="height :200px;width:250px" data-toggle="modal" data-target="#mymodal3">CHECK PROGRESS</button>

</div>

<div class="modal fade" id="mymodal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cases submitted</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <table class="table table-dark">
  <thead>
    <tr>
      
      <th scope="col">Case ID</th>
     
      <th scope="col">Date Submitted</th>
       <th scope="col">Description</th>
       <th scope="col">Person Involved</th>
       <th scope="col">Findings</th>
       <th scope="col">Remarks</th>
        
    </tr>
  </thead>
  
  <%
 try{
	 
	 String url="jdbc:mysql://localhost:3306/COMP390";
		String username="root";
		String password="";
		
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet res=null;
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		 conn=DriverManager.getConnection(url,username,password);
		stmt=conn.createStatement();
		String z=(String)session.getAttribute("userOne");
		String data="SELECT * from complains where your_regno='"+z+"'";
		res=stmt.executeQuery(data);
		
		
		while(res.next()==true ){
	 
 
 
  %>
 <tbody>
 	 <tr>
 	 	<td><%=res.getString(1) %></td>
	   	<td><%=res.getString(2) %></td>
	 
	    <td><%=res.getString(6) %></td>
	     <td><%=res.getString(7) %></td>
	     <td><%=res.getString(8) %></td>
	     <td><%=res.getString(9) %></td>
	    
         
  
  		</tr>
  </tbody>
  <%
	}
	}catch(Exception ex){
		out.println("error1");
	}finally{
		
	}
  
  %> 
</table>
      
      </div>
     
    </div>
  </div>
</div>



</div>

<div class= "row">

<div class="col-sm-3">




</div>






</div>





</div>
</br>
</br>
</br>
<footer style ="background-color: #222; color:#ffffff" class="site-footer" >
	<div class="container">

	
 <div class="row">
	<div class="col-md-4 ">
		<adress>
			Egerton University Security Department<br>
			P.O.BOX 536,<br>
			Egerton<br>
			PHONE NO_07XXXXXXXX
		</adress>
	</div>

	<div class="col-md-4 ">
		<address>
		Egerton University<br>
		<i>Transforming Lives Through Quality Education</i><br>
		NJORO Campus<br>
		www.egerton.ac.ke
		
		</address>
	</div>
	<div class="col-md-4" >
		 <adress >
       		Chief Security <br>
        	Egerton University-Kenya<br>
        	chiefsecurity@egerton.ac.ke<br>
		 </adress>
	</div>
	</div>
	<hr>
	<p>Website information</p>
	<div class="button-footer">
	<div class="col-md-8">©SecurityDepartmentEgertonUniverity .2019</div>
	</div>
	

   </div>

	</div>



</footer>



</body>
</html>