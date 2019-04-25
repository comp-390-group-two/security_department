

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ll
 */
@WebServlet("/ll")
public class ll extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String one=request.getParameter("username");
		String two=request.getParameter("password");

    loginDAO firstObject=new loginDAO();
    
    
   
		
		if( firstObject.check(one,two)) {
		
			HttpSession session=request.getSession();
			session.setAttribute("userOne",one);
			
			response.sendRedirect("WelcomeStudentPage.jsp");
			
			
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
