<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="row">
<div class="col-md-4">
<table class="table  table-bordered table-striped table-hover">
  <thead>
    <tr>
		<th scope="col">Date</th>
      <th scope="col">Full Name</th>
      <th scope="col">SSN</th>
      <th scope="col"> Phone Number</th>
      <th scope="col" class="text-center">Action</th>
       <th scope="col"> Comment</th>
     
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
		String data="SELECT * from guards order by Date";
		res=stmt.executeQuery(data);
		
		while(res.next()==true ){
	 
 
 
  %>
   <tbody>
 	 <tr>
 	 	<td><%=res.getString (2)%></td>
	   	<td><%=res.getString(3) %></td>
	   	<td><%=res.getString(4) %></td>
	  	 <td><%=res.getString(5) %></td>
	  	
	   
	  <td class="text-center">
	  
	    <a href="AssignDuty.jsp?u=<%=res.getString(4) %>" class="btn btn-warning">ASSIGN GUARD</a>
	  </td>
         <td ><h5 style="color:red"> ${Message} </h5></td>
  
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