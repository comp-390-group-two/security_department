<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%


String url="jdbc:mysql://localhost:3306/COMP390";
	String username="root";
	String password="";
	
	
	Connection conn=null;
	Statement stmt=null;
	ResultSet res=null;
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn=DriverManager.getConnection(url,username,password);
	stmt=conn.createStatement();
	String u=request.getParameter("d");
	stmt.executeUpdate("delete from guards where SSNO='"+u+"'");
	
	response.sendRedirect("OperationalDashboard.jsp");
	

%>