package reportCase;




import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class report_case
 */
@WebServlet("/report_case")
public class report_case extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				
		String date_of_occurrence=request.getParameter("date_of_occurance");
		String regno=request.getParameter("your_regno");
		String  venue=request.getParameter("venue");
		String time_of_occurance=request.getParameter("specifictime_of_occurance");
		String people_involved=request.getParameter("people_involved");
		String reason_of_accused=request.getParameter("reason_of_accused");
	    String description=request.getParameter("occurance");
		
		//recordCaseDAO case1= new recordCaseDAO();
	    
		
			if(date_of_occurrence==""||date_of_occurrence.equals(null)||regno==""||regno.equals(null)||venue==""||venue.equals(null)||time_of_occurance==""||time_of_occurance.equals(null)||people_involved==""||people_involved.equals(null)||reason_of_accused==""||reason_of_accused.equals(null)||description==""||description.equals(null)) {
				
				request.setAttribute("Message","ALL FIELDS ARE MANDATORY WHEN REPORTING A CASE");
				getServletContext().getRequestDispatcher("/StudentHomePage.jsp").forward(request,response);
	} 
			else {
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					
					Connection myConn =DriverManager.getConnection("jdbc:mysql://localhost:3306/security","root","gerry");

					String sql="INSERT INTO complains VALUES (?,?,?,?,?,?,?)";
					
					PreparedStatement ps =myConn.prepareStatement(sql);
				
					ps.setString(1,date_of_occurrence );
					ps.setString(2, regno);
					ps.setString(3, venue);
					ps.setString(4, time_of_occurance);
					ps.setString(5,description );
					ps.setString(6, people_involved);
					ps.setString(7, reason_of_accused);
					
					ps.executeUpdate();
					System.out.println("Complaint Submitted");
					request.setAttribute("Message","COMPLAIN SUBMITTED");
					ps.close();
					myConn.close();
				}catch(Exception exc) {
					System.out.println("Error Occurred");
					exc.printStackTrace();
					request.setAttribute("Message","Error occurred, please retry again");
				}
					
					
					
				//case1.insertToDB(sql);
				
				getServletContext().getRequestDispatcher("/StudentHomePage.jsp").forward(request,response);
			

	}
}
}	
