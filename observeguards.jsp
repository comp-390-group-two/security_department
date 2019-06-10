<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
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
<body style="background-color:  #006666;">


<div class="row" >


<h2  style="color:#ffffff"><center>EGERTON UNIVERSITY</center></h2>
<h3  style="color:#ffffff"><center>EGERTON UNIVERSITY SECURITY DEPARTMENT</center></h3>
</div>

      <div class="" style="float:">

<form action="" method="get">
<input type="text" name="search1" class="" placeholder="Search by name,date ,place or phone number" Style="width:300px" ></br>


</form>
<table class="table  table-bordered table-striped table-hover" style="margin-left:50px">
  <thead>
    <tr  style="color:#ffffff">
   
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
 <a href="SecurityPanel.jsp" class="btn btn-success">&nbsp;BACK</a>
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