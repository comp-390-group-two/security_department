
					<%@ page import="java.io.*,java.util.*,java.sql.*" %>
			 	  	<table class="table table-bordered table-striped table-condensed align-center">
							<tr>
								
								<th>Date</th>
								<th>Your Regno</th>
								<th>Place of Occurence</th>
								<th>Time Of Occurence</th>
								<th>Description</th>
								<th>Involved Person(s)</th>
								<th>Reason</th>
								
							</tr>
						
							<%
								try{
									Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
									Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/security","root","gerry");
								String query ="select date_of_occurrence ,regno,venue,time_of_occurance,description, people_involved, reason_of_accused from complains ";
									Statement st = myCon.createStatement();
									
								ResultSet rs = st.executeQuery(query);
									
									while(rs.next()){
										%>
										<tr>
										
										<td><%=rs.getString("date_of_occurrence") %></td>
											<td><%=rs.getString("regno") %></td>
								 				<td><%=rs.getString("venue")%></td>
													<td><%=rs.getString("time_of_occurance") %></td>
														<td><%=rs.getString("description") %></td>
															<td><%=rs.getString("people_involved") %></td>
																<td><%=rs.getString("reason_of_accused") %></td>
										</tr>
										<%
									}
								}catch(Exception exc){
									out.println("Exception:"+exc.getMessage());
									exc.printStackTrace();
								}
							%>
								
							
						</table>
				