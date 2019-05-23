
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
<body>



<div class="row" >


<h2 style="color:"><center>EGERTON UNIVERSITY</center></h2>
<h3 style="color:"><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>
</div>

<div class="row">
<div class="col-md-4">

<h6>These are the complains submitted </h6>

<table class="table table-striped">
  <thead>
    <tr>
     <th scope="col">caseID</th>
      <th scope="col">date_of_occurrence</th>
      <th scope="col">your_regno</th>
      <th scope="col">venue</th>
      <th scope="col">specific_time_of_occurance</th>
      
      <th scope="col">occurance</th>
      <th scope="col">people_involved</th>
        
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
		String data="SELECT * from complains";
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


	 
        
</body>
</html>