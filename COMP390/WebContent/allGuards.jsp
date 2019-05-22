
		<!-- Content Here -->
			<%@ page import="java.io.*,java.util.*,java.sql.*" %>
			
			  	<table class="table table-bordered table-striped table-condensed align-center">
					<tr>
						
						<th>Security ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Department</th>
						<th>Role</th>
						
					</tr>
					
					<%
						try{
							Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
							Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/security","root","gerry");
							String query ="select sec_id , first_name,last_name,department,role from guards ";
							Statement st = myCon.createStatement();
							
							ResultSet rs = st.executeQuery(query);
							
							while(rs.next()){
								%>
								<tr>
								
								<td><%=rs.getString("sec_id") %></td>
								<td><%=rs.getString("first_name") %></td>
						 	<td><%=rs.getString("last_name")%></td>
								<td><%=rs.getString("department") %></td>
								<td><%=rs.getString("role") %></td>
								</tr>
								<%
							}
						}catch(Exception exc){
							out.println("Exception:"+exc.getMessage());
							exc.printStackTrace();
						}
					%>
						
					
				</table>
		
