package students;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import students.registerStudentsDAO;

/**
 * Servlet implementation class register_student
 */
@WebServlet("/register_student")
public class register_student extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register_student() {
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
		String regno=request.getParameter("regno");
		String name=request.getParameter("name");
		String faculty=request.getParameter("faculty");
		String default_password=request.getParameter("password");
		String default_password2=request.getParameter("password2");
		registerStudentsDAO register=new registerStudentsDAO();
		
		if(regno.equals(null)||regno==""||name.equals(null)||name==""||faculty.equals(null)||faculty==""||default_password.equals(null)||default_password==""||default_password2.equals(null)||default_password2=="") {
			request.setAttribute("Message","enter all fields");
			getServletContext().getRequestDispatcher("/RegisterStudent.jsp").forward(request,response);
		}
		
		else if(!default_password.equals(default_password2)) {
			request.setAttribute("Message","Password MISMATCH");
			getServletContext().getRequestDispatcher("/RegisterStudent.jsp").forward(request,response);
		}
		else {
		
		
		String sql="INSERT INTO students(regno,student_name,faculty,password) VALUES('"+regno+"','"+name+"','"+faculty+"','"+default_password+"')";
		
		register.insertToDBS(sql);
		getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
		
		}
	}

}
