

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

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
		
		String  venue=request.getParameter("venue");
		String specifictime_of_occurance=request.getParameter("specifictime_of_occurance");
		String people_involved=request.getParameter("people_involved");
		
		
	    String occurance=request.getParameter("occurance");
	    
	    HttpSession session=request.getSession();
	    String your_regno=(String)session.getAttribute("userOne");
	    
	    
	 
	    
	   Date today=new Date();
	   
	 
	  
	  System.out.println( date_of_occurance);
	  
	   LocalDate two=LocalDate.now();
	   
	   
	   
	  
		
		recordCaseDAO case1= new recordCaseDAO();
		
		
			if(date_of_occurance==""||date_of_occurance.equals(null)||venue==""||venue.equals(null)||specifictime_of_occurance==""||specifictime_of_occurance.equals(null)||people_involved==""||people_involved.equals(null)||occurance==""||occurance.equals(null)) {
				
				request.setAttribute("Message","ALL FIELDS ARE MANDATORY WHEN REPORTING A CASE");
				getServletContext().getRequestDispatcher("/WelcomeStudentPage.jsp").forward(request,response);
	} 
			else if(date_of_occurance.compareTo(two.toString())>0) {
				
				request.setAttribute("Message","enter date today or past days");
				getServletContext().getRequestDispatcher("/WelcomeStudentPage.jsp").forward(request,response);
				
			}
			else {
				String sql;
				sql=("INSERT INTO complains(date_of_occurrence,your_regno,venue,specific_time_of_occurance,occurance,people_involved)VALUES('"+date_of_occurance+"','"+your_regno+"','"+ venue+"','"+specifictime_of_occurance+"','"+occurance+"','"+people_involved+"')");
				
				
				request.setAttribute("yourname",your_regno);
				case1.insertToDB(sql);
				request.setAttribute("Message","COMPLAIN SUBMITTED");
				getServletContext().getRequestDispatcher("/WelcomeStudentPage.jsp").forward(request,response);
				

	}
}
}	
