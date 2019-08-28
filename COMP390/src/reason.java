

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logins.reasonDAO;
import logins.registerStudentsDAO;

/**
 * Servlet implementation class reason
 */
@WebServlet("/reason")
public class reason extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reason() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reason=request.getParameter("reason");
		
		  HttpSession session=request.getSession();
		   String your_regno=(String)session.getAttribute("userOne");
		
		
			reasonDAO one=new reasonDAO();
		
		if(reason.equals(null)||reason=="") {
			
			request.setAttribute("Message","ALL FIELDS ARE MANDATORY WHEN CLEARING");
			getServletContext().getRequestDispatcher("/WelcomeStudentPage.jsp").forward(request,response);
		}
		else {
			String sql="INSERT INTO Clearance(regno,Reason_of_clearance) Values('"+your_regno+"','"+reason+"')";
			
			one.insertToDB(sql);
			
			request.setAttribute("Message","CLEARANCE REQUEST RECEIVED");
			getServletContext().getRequestDispatcher("/WelcomeStudentPage.jsp").forward(request,response);
			

			
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
