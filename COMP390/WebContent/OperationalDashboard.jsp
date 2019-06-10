<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>

<h1 class="text-center" style="color:#ffffff">Egerton University Security Department</h1>
<h1 class="text-center"style="color:#ffffff">Security Department</h1>
<div class="row">
<div class="col-md-4">

<button type="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#mymodal2">ADD NEW  GUARD</button>
<a href="GuardsAssigned.jsp"><button type="button" class="btn btn-lg btn-primary" ">
  GUARDS ASSIGNED
</button></a>

</div>
<div class="col-md-8">

<form action="Logout">

<input style="float:right " type="submit" value="LOGOUT">


</form>
</div>

</div>

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>ADD GUARD</title>
</head>
<body style="background-color:  #006666;">


<div class="modal fade" id="mymodal2">
<div class="modal-dialog"> 


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
	
	
	</div>
	</div>	
	
	<div class="modal fade" id="mymodal3">
<div class="modal-dialog"> 


<div class="modal-body">

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

</div>
</div>	
</div>
			
			

<div class="row">
<div class="col-md-4">

<center><h2 style="color:#ffffff">GUARDS DETAILS</h2></center>
 <h5 style="color:red"> ${Message} </h5>
  

<table class="table  table-bordered table-striped table-hover" style="margin-left:300px">
  <thead>
    <tr  style="color:#ffffff">
		<th scope="col">Date</th>
      <th scope="col">Full Name</th>
      <th scope="col">SSN</th>
      <th scope="col"> Phone Number</th>
      <th scope="col" class="text-center">Action</th>
    
     
    </tr>
  </thead>
 
  <%
 try{
	
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn=DriverManager.getConnection(url,username,password);
		stmt=conn.createStatement();
		String data2="SELECT * from guards order by Date";
		res=stmt.executeQuery(data2);
		
		while(res.next()==true ){
	 
 
 
  %>
   <tbody>
 	 <tr>
 	 	<td><%=res.getString (2)%></td>
	   	<td><%=res.getString(3) %></td>
	   	<td><%=res.getString(4) %></td>
	  	 <td><%=res.getString(5) %></td>
	  	
	   
	  <td class="text-center">
	  
	    <a href="EditGuards.jsp?u=<%=res.getString(4) %>" class="btn btn-warning">UPDATE</a>
	  </td>
	   <td class="text-center">
	  
	    <a href="deleteGuards.jsp?d=<%=res.getString(4) %>" class="btn btn-danger">DELETE</a>
	  </td>
	  
	  	   <td class="text-center">
	  
	    <a href="AssignDuty.jsp?u=<%=res.getString(4) %>" class="btn btn-primary">ASSIGN GUARD</a>
	  </td>
       
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