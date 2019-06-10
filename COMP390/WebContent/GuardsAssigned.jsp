<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<body style="background-color:#006666;">

<div class="row" >


<h2  style="color:#ffffff"><center>EGERTON UNIVERSITY</center></h2>
<h3  style="color:#ffffff"><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>
</div>




<h2 style="float:CENTER ;color:#ffffff">GUARDS ASSIGNED </h2>
<form action="" method="get">
<input type="text" name="search1" placeholder="Search here." >
</br>
</br>
</form>
<table class="table  table-bordered table-striped table-hover">
  <thead >
    <tr style="color:#ffffff">
		<th scope="col">Name</th>
      <th scope="col">SSN</th>
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
	 Connection conn;
	 Statement stmt;
	 ResultSet res;
	 
	 
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn=DriverManager.getConnection(url,username,password);
		stmt=conn.createStatement();
		
		String data3;
		String q=request.getParameter("search1");
		if(q!=null){
			data3="SELECT * from assigned where phoneno like '%"+q+"%' or name  like '%"+q+"%' or ssn like '%"+q+"%' or place like '%"+q+"%' or date like '%"+q+"%' or time_from like '%"+q+"%'or time_to like '%"+q+"%'" ;
		
			
		}
		
		else{
			 data3="SELECT * from assigned order by Date";
		}
		
	
		res=stmt.executeQuery(data3);
		
		
		while(res.next()==true ){
			
 
 
  %>
   <tbody>
   <tr>
   
  		 <td><%=res.getString (1)%></td>
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

<a href="OperationalDashboard.jsp" class="btn btn-default">BACK</a>
</div>

</body>

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
</html>