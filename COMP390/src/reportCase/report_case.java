package reportCase;




import java.io.IOException;
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
		
		
		
		String date_of_occurance=request.getParameter("date_of_occurance");
		String regno=request.getParameter("your_regno");
		String  venue=request.getParameter("venue");
		String time_of_occurance=request.getParameter("specifictime_of_occurance");
		String people_involved=request.getParameter("people_involved");
		String Reason_of_accused=request.getParameter("reason_of_accused");
	    String description=request.getParameter("occurance");
		
		recordCaseDAO case1= new recordCaseDAO();
		
		
			if(date_of_occurance==""||date_of_occurance.equals(null)||regno==""||regno.equals(null)||venue==""||venue.equals(null)||time_of_occurance==""||time_of_occurance.equals(null)||people_involved==""||people_involved.equals(null)||Reason_of_accused==""||Reason_of_accused.equals(null)||description==""||description.equals(null)) {
				
				request.setAttribute("Message","ALL FIELDS ARE MANDATORY WHEN REPORTING A CASE");
				getServletContext().getRequestDispatcher("/StudentHomePage.jsp").forward(request,response);
	} 
			else {
				String sql;
				sql=("INSERT INTO complains(date_of_occurrence,regno,venue,time_of_occurance,description,people_involved,reason_of_accused)VALUES('"+date_of_occurance+"','"+regno+"','"+ venue+"','"+time_of_occurance+"','"+description+"','"+people_involved+"','"+Reason_of_accused+"')");
				
				case1.insertToDB(sql);
				request.setAttribute("Message","COMPLAIN SUBMITTED");
				getServletContext().getRequestDispatcher("/StudentHomePage.jsp").forward(request,response);
				

	}
}
}	
