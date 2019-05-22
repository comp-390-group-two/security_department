package security;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logins.GuardDAO;
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
		
	
		String sec_id=request.getParameter("security_id");
		String password=request.getParameter("password");
		
			GuardDAO guard = new GuardDAO();
			
			if(guard.check(sec_id,password)) {
				HttpSession session=request.getSession();
				
				session.setAttribute("userOne",sec_id);
				if(sec_id.equals("NVA-050") || sec_id.equals("NVA-051") ||  sec_id.equals("NVA-052")|| sec_id.equals("NVA-053"))
					
						
					response.sendRedirect("AdminDashBoard.jsp");
				else {
					response.sendRedirect("GuardDashBoard.jsp");
				}
				
			}
			else {
			response.sendRedirect("security-login.jsp");
			}
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String sec_id=request.getParameter("security_id");
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String password= request.getParameter("password");
		String department=request.getParameter("department");
		String role = request.getParameter("role");
		
	//	securityDB seci = new securityDB();
		
		//seci.postDb(one, two, three, four, five);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection myConn =DriverManager.getConnection("jdbc:mysql://localhost:3306/security","root","gerry");
			String sql="INSERT INTO guards VALUES (?,?,?,?,?,?) ";

			PreparedStatement myStmt= myConn.prepareStatement(sql);
			
			myStmt.setString(1,sec_id);
			myStmt.setString(2, first_name);
			myStmt.setString(3, last_name);
			myStmt.setString(4, password);
			myStmt.setString(5, department);
			myStmt.setString(6, role);
			
			myStmt.executeUpdate();
			
			System.out.println("Security successfuly inserted");
			myStmt.close();
			myConn.close();
 		}catch(Exception exc) {
			exc.printStackTrace();
		}
		/*RequestDispatcher rd = request.getRequestDispatcher("WelcomeStudentPage.jsp");
		   rd.forward(request, response);
		   */
		
		response.sendRedirect("security-login.jsp");
	}

}
