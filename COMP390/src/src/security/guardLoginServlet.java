package security;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import security.GuardRegisterDAO;
/**
 * Servlet implementation class guardLoginServlet
 */
@WebServlet("/guardLoginServlet")
public class guardLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public guardLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String one=request.getParameter("security_id");
		String two=request.getParameter("firstName");
		String three=request.getParameter("lastName");
		String four=request.getParameter("departMent");
		String five= request.getParameter("password");
		
		
		GuardRegisterDAO guard = new GuardRegisterDAO();
			
			if(guard.check(one, two, three, four, five)) {
				HttpSession session=request.getSession();
				session.setAttribute("userOne",one);
				
				response.sendRedirect("guardprofile.jsp");
				
				
			}
			else {
				response.sendRedirect("register-guards.jsp");
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
