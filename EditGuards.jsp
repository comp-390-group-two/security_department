<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditGuard.jsp</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>

<body style="background-color:  #006666";>

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

 
 
  <%
 
stmt=conn.createStatement();
String u=request.getParameter("u");


String data="select * from guards where SSNO ='"+u+"'";
res=stmt.executeQuery(data);

while (res.next()){
	

 
 
 
 %>


	 	<h3  style= "color:#ffffff"><center>Edit Guards Data</center></h3>
	 	<h5 style="color:red"> ${Message} </h5>
 	
 	<form action="EDIT" method="post">
 	<table class="table  table-bordered table-striped table-hover" style="margin-left:">
  
  <thead>
    <tr  style="color:#ffffff">
    
   <th scope="col">SSNO</th>
   <th scope="col">Date</th>
     <th scope="col">Name</th>
     
      <th scope="col">Phone no</th>
      
      
    </tr>
  </thead>

 		<tbody>
 	 <tr>
 	 	 	<td>
<input type="text" name="ssn" class="form-control" value="<%=res.getString(4) %>"readonly>
	

</td>
 	 	<td>
<input type="text" name="date" class="form-control" value="<%=res.getString(2) %>"readonly>
	

</td>
	   	<td>
			
<input type="text" name="name" class="form-control" value="<%=res.getString(3) %>">

 			
</td>
	    <td> 

 						
 <input type="text" name="phone_no" class="form-control" value="<%=res.getString(5) %>">

</td>

	 
		<td>
			<button type="submit" class=" form-control btn btn-warning  "><b>SUBMIT CHANGES</b></button></br>
		    
	       </td>
  		
  	</tr>
  		 </tbody>
 		</table>
 		</form>	
 		
<%
}
%>
 					
	<a href="OperationalDashboard.jsp" class=" btn btn-default">BACK</a>
 					
 					
 					
 		

  



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
	<div class="col-md-8">İSecurityDepartmentEgertonUniverity .2019</div>
	</div>
	

   </div>

	</div>



</footer>

			
			
			  
			  

</body>
</html>
