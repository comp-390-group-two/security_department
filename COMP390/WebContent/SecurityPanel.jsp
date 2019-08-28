
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dash Board</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	
	
</head>
<body style="background-color:  #006666;">



<div class="row" >


<h2  style="color:#ffffff"><center>EGERTON UNIVERSITY</center></h2>
<h3  style="color:#ffffff"><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>
</div>


<div class="row">
<div class="col-md-4">
<!-- Button trigger modal -->
<a href="observeguards.jsp"><button type="button" class="btn btn-primary" style="Height:100px;"">
  GUARDS ON DUTY
</button></a>

<!-- Modal -->
<div class="modal fade" id="guards" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Guards on Duty</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="" style="float:">

<form action="" method="get">
<input type="text" name="search1" class="form-control" placeholder="Search here......" ></br>


</form>
<table class="table  table-bordered table-striped table-hover">
  <thead>
    <tr>
		<th scope="col">Name</th>
     
      <th scope="col"> Phone Number</th>
      <th scope="col">place</th>
      <th scope="col">Date</th>
    <th scope="col"> TIME FROM</th>
     <th scope="col"> TIME TO</th>
     
    </tr>
  </thead>
 
  <%
 try{
	 
	 String url="jdbc:mysql://localhost:3306/COMP390";
		String username="root";
		String password="";
	 Connection connn;
	 Statement stmti;
 	String q=request.getParameter("search1");
 	
 	System.out.println(q);
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connn=DriverManager.getConnection(url,username,password);
		stmti=connn.createStatement();
		ResultSet rest;
		String data3;
		if(q!=null){
			data3="SELECT * from assigned where phoneno like '%"+q+"%' or name  like '%"+q+"%' or ssn like '%"+q+"%' or place like '%"+q+"%' or date like '%"+q+"%' or time_from like '%"+q+"%'or time_to like '%"+q+"%'" ;
		
			
		}
		
		else{
			 data3="SELECT * from assigned order by Date";
		}
		
		
		rest=stmti.executeQuery(data3);
		
		while(rest.next()==true ){
			
 
 
  %>
   <tbody>
   <tr>
   
  		 <td><%=rest.getString (1)%></td>
		   	
		   	<td><%=rest.getString(3) %></td>
		  	 <td><%=rest.getString(4) %></td>
		  	  <td><%=rest.getString(5) %></td>
		  	   <td><%=rest.getString(6) %></td>
		  	     <td><%=rest.getString(7) %></td>
	 
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
      
      
      
      
        ...
      </div>
      
    </div>
  </div>
</div>


</div>
<div class="col-md-8">

<form action="Logout">

<input style="float:right " type="submit" value="LOGOUT">


</form>
</div>

</div>


<div class="row">
<div class="col-md-4">

<h3  style="color:#ffffff" >COMPLAINTS SUBMITTED </h3>
<form action="" method="get">
<input type="text" name="search" class="form-control" placeholder="Search here.by ID.or DATE..." >


</form>
</br>
 <h5 style="color:red"> ${Message} </h5>

<table class="table  table-bordered table-striped table-hover" style="margin-left:250px">
  <thead>
    <tr  style="color:#ffffff">
   
     <th scope="col">caseID</th>
      <th scope="col">date</th>
      <th scope="col">Complainant RegNo</th>
      <th scope="col">venue</th>
      <th scope="col">time</th>
      
      <th scope="col">occurance</th>
      <th scope="col">accused</th>
      
      <th scope="col">Findings</th>
      <th scope="col">Remarks</th>
      
      <th scope="col">Action</th>
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
		String query=request.getParameter("search");
		String data;
		
		
		if(query!=null){
			data="SELECT * from complains where number like '%"+query+"%' or date_of_occurrence like '%"+query+"%'";
		}
		else{
			
			data="SELECT * from complains ";
			
		}
		
		res=stmt.executeQuery(data);
		
		while(res.next()==true ){
	 
 
 
  %>
   <tbody>
 	 <tr>
 	 	<td><%=res.getString(1) %></td>
	   	<td><%=res.getString(2) %></td>
	    <td><%=res.getString(3) %></td>
	    <td><%=res.getString(4) %></td>
	    <td><%=res.getString(5) %></td>
	    <td><%=res.getString(6) %></td>
	     <td><%=res.getString(7) %></td>
	    
	     <td><%=res.getString(8) %></td>
	     <td><%=res.getString(9) %></td>
	    
          <td>
	     
	      <a href="handleCase.jsp?u=<%=res.getString(1) %>" class="btn btn-warning">WRITE FINDINGS</a>
	   
	
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
<div class="row">
<div class="col-md-4">
<%-- 
<div class="" style="float:">
<h2 style="float:right">GUARDS ASSIGNED </h2>
<form action="" method="get">
<input type="text" name="search1" class="form-control" placeholder="Search here......" >


</form>
<table class="table  table-bordered table-striped table-hover">
  <thead>
    <tr>
		<th scope="col">Name</th>
     
      <th scope="col"> Phone Number</th>
      <th scope="col">place</th>
      <th scope="col">Date</th>
    <th scope="col"> TIME FROM</th>
     <th scope="col"> TIME TO</th>
     
    </tr>
  </thead>
 
  <%
 try{
	 
	 String url="jdbc:mysql://localhost:3306/COMP390";
		String username="root";
		String password="";
	 Connection connn;
	 Statement stmti;
 	String q=request.getParameter("search1");
 	
 	System.out.println(q);
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connn=DriverManager.getConnection(url,username,password);
		stmti=connn.createStatement();
		ResultSet rest;
		String data3;
		if(q!=null){
			data3="SELECT * from assigned where phoneno like '%"+q+"%' or name  like '%"+q+"%' or ssn like '%"+q+"%' or place like '%"+q+"%' or date like '%"+q+"%' or time_from like '%"+q+"%'or time_to like '%"+q+"%'" ;
		
			
		}
		
		else{
			 data3="SELECT * from assigned order by Date";
		}
		
		
		rest=stmti.executeQuery(data3);
		
		while(rest.next()==true ){
			
 
 
  %>
   <tbody>
   <tr>
   
  		 <td><%=rest.getString (1)%></td>
		   	
		   	<td><%=rest.getString(3) %></td>
		  	 <td><%=rest.getString(4) %></td>
		  	  <td><%=rest.getString(5) %></td>
		  	   <td><%=rest.getString(6) %></td>
		  	     <td><%=rest.getString(7) %></td>
	 
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

--%>
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