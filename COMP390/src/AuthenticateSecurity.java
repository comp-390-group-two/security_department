

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logins.SecurityLoginDao;

/**
 * Servlet implementation class AuthenticateSecurity
 */
@WebServlet("/AuthenticateSecurity")
public class AuthenticateSecurity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenticateSecurity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		
		
		SecurityLoginDao officer=new SecurityLoginDao();
		
		
		if( officer.check(uname,password)) {
		
			HttpSession session=request.getSession();
			session.setAttribute("userOne",uname);
			
			response.sendRedirect("SecurityPanel.jsp");
			
			
		}
		else {
			response.sendRedirect("securityLogin.jsp");
		}
	}
		
		
		
	}


