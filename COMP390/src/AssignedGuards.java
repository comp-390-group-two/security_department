

import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AssignedGuards
 */
@WebServlet("/AssignedGuards")
public class AssignedGuards extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignedGuards() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String ssn=request.getParameter("ssn");
		String phone_no=request.getParameter("phone_no");
		String place=request.getParameter("place");
		String date=request.getParameter("date");
		String time_from=request.getParameter("timefrom");
		String time_to=request.getParameter("timeto");
		
		 Date today=new Date();

		 LocalDate two=LocalDate.now();
		
		
		if(name==""||name.equals(null)||ssn ==""||ssn.equals(null)||phone_no.equals(null)||phone_no==""||place.equals(null)||place==""||date.equals(null)||date==""||time_from.equals(null)||time_from==""||time_to==""||time_to.equals(null)) {
			request.setAttribute("Message","ALL FIELDS ARE MANDATORY .ASSIGNMNET FAILED");
			getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
			
		}
		else if (date.compareTo(two.toString())<0){
			
			request.setAttribute("Message","enter date today or coming days :Registration failed");
			getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
			
		}
		else {
			getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
			
			
		}
		
	}

}
