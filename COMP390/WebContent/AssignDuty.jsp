<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Duty Assigned</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>

<body style="background-color:#006666;">

<div class="row">

<div class="col-md-4">

<iframe src="http://free.timeanddate.com/clock/i6r7xlta/n170/szw110/szh110/hoc009/hbw0/hfc9ff/cf100/hnc0f9/hwc000/fan2/fas16/fac555/fdi60/mqcf0f/mqs4/mql2/mqw4/mqd78/mhcf90/mhs4/mhl3/mhw4/mhd78/mmv0/hhc990/hhs2/hmc990/hms2/hscf09" frameborder="0" width="110" height="110"></iframe>

</div>
<div class="col-md-8">
<h2 style="color:#ffffff">EGERTON UNIVERSITY</h2>
<h3 style="color:#ffffff">EGERTON UNIVERSITY SECURITY DEPARTMENT</h3>
</div>
</div>

<%


String url="jdbc:mysql://localhost:3306/COMP390";
	String username="root";
	String password="";
	
	PreparedStatement state;
	Connection conn=null;
	Statement stmt=null;
	ResultSet res=null;
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	 conn=DriverManager.getConnection(url,username,password);
	 

%>

 <form action="AssignedGuards" method="post">
 
 <table class="table  table-bordered table-striped table-hover" style="margin-left:">
  <thead>
    <tr  style="color:#ffffff">
		
      <th scope="col">Full Name</th>
      <th scope="col">SSN</th>
      <th scope="col"> Phone Number</th>
      <th scope="col"> Place</th>
      <th scope="col" class="text-center">Date</th>
       <th scope="col" class="text-center">Time From</th>
        <th scope="col" class="text-center">Time To</th>
    
     
    </tr>
  </thead>
 
 
  <%
 
stmt=conn.createStatement();
String u=request.getParameter("u");


String data="select * from guards where SSNO='"+u+"'";
res=stmt.executeQuery(data);

while (res.next()){
	

 
 
 
 %>
<div class="container " style="width:40%">
<div class="card mx-auto" style="width: 50rem;">
 <img src="" class="card-img-top mx-auto"  alt="...">
  
  <div class="card-body">
	  
	   
	
	 	<h2  style= "color:#ffffff"><center>ASSIGN GUARD  HERE </center></h2>
	 				<h5 style="color:red"> ${Message} </h5>
 	<tbody>
 	 <tr>
 	 	<td>
 	 	 <input  type="text" class="form-control" id="name" name="name" value="<%=res.getString (3)%>"readonly>
 	 	
 	 	</td>
	   	<td>
	   	
	   	 <input  type="text" class="form-control" id="ssn" name="ssn" value="<%=res.getString (4)%>"readonly>
	   	
	   	</td>
	   	<td>
	   	 <input  type="text" class="form-control" id="phone_no" name="phone_no" value="<%=res.getString (5)%>"readonly>
	   	
	   	</td>
	  	 
	  	
 					  
 					
 					
 					<td>
 				
					 		<select class="form-control" id="place" name="place">
					 					   			 	<option>Field</option>
					 					   			 	<option>LIBRARY</option>
					 					   			 	<option>ADMIN</option>
					 					   			 	<option>LOWERFIELD</option>
					 		 	
					 					   			 	
					 		</select>
					 	
					 	</td>				
 					
 						<td>
 					    <input type="date" name="date" class="form-control" style="padding:30px"  placeholder="date">

 				</td>
 					<td>
 					   			 	
 					 <input  type="time" class="form-control" id="timefrom" name="timefrom">
 
 					   			 	
				</td>
					<td>				
					
 					 <input  type="time" class="form-control" id="timeto" name="timeto">
 
 					 </td>  			 	
					
					
				
 					<%
}
 					%>
 					
 					
 					
 					<td>
 			
 					<button type="submit" class=" form-control btn btn-primary"  style= "background-color: #00394d">ASSIGN GUARD</button></br>
 					</td>
 					</tbody>
 					
 					
 					
 					</div>
 				</div>
 			
 		</div>
 		</div>
		 

  </table>
<a href="OperationalDashboard.jsp" class="btn btn-default">BACK</a>
</form>

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