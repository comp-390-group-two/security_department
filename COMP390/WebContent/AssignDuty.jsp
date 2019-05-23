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
	  
	   
	 <div class="jumbotron" style="height:60% ;width:120% ;background-color:#2e829e;"> 
	 
	 	<h2  style= "color:#ffffff"><center>ASSIGN GUARD  HERE </center></h2>
	 				<h5 style="color:red"> ${Message} </h5>
 	
 		
 					
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff" for ="name"  >FULL NAME</label>
 					    <input type="text" name="name" class="form-control" style="padding:20px" value="<%=res.getString(3) %>"readonly>

 					</div>
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff"for ="ssn" >SSN</label>
 					    <input type="text" name="ssn" class="form-control" style="padding:20px" value="<%=res.getString(4) %>" readonly>

 					</div>
 					
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff"for ="phone_no" >PHONE_NO</label>
 					    <input type="text" name="phone_no" class="form-control" style="padding:20px" value="<%=res.getString(5) %> "readonly>
 					</div>
 					
 					
 					
 						<div class="form-group">
									
							<label style="color:#ffffff" class="control-label" for ="place">PLACE</label>
					 		<select class="form-control" id="place" name="place">
					 					   			 	<option>Field</option>
					 					   			 	<option>LIBRARY</option>
					 					   			 	<option>ADMIN</option>
					 					   			 	<option>LOWERFIELD</option>
					 		 	
					 					   			 	
					 		</select>
					 		
						</div>
					 					
 					<div class="form-group">
 						<label class="control-label"  style= "color:#ffffff"  >DATE</label>
 					    <input type="date" name="date" class="form-control" style="padding:30px"  placeholder="date">

 					</div>
 					
 					<div class="form-group">
									
					<label style="color:#ffffff; class="control-label" for ="timefrom">TIME_FROM</label>
 					   			 	
 					 <input  type="time" class="form-control" id="timefrom" name="timefrom">
 
 					   			 	
					</div>
					
					<div class="form-group">
									
					<label style="color:#ffffff; class="control-label" for ="timeto">TIME_TO</label>
 					   			 	
 					 <input  type="time" class="form-control" id="timeto" name="timeto">
 
 					   			 	
					</div>
 					<%
}
 					%>
 					
 					
 					
 					
 			
 					<button type="submit" class=" form-control btn btn-primary"  style= "background-color: #00394d">ASSIGN GUARD</button></br>
 					<a href="OperationalDashboard.jsp" class="btn btn-default">BACK</a>
 					
 					
 					</div>
 				</div>
 			
 		</div>
 		</div>
		 

  

</form>

			
			
			  
			  

</body>
</html>