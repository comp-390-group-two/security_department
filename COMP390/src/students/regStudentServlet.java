package students;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.spec.PSSParameterSpec;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import students.registerStudentsDAO;

/**
 * Servlet implementation class register_student
 */
@WebServlet("/regStudentServlet")
public class regStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regStudentServlet() {
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
			response.setContentType("text/html");
		
			PrintWriter out = response.getWriter();
		
		String regno=request.getParameter("regno");
		String student_name=request.getParameter("name");
		String faculty=request.getParameter("faculty");
		String password1=request.getParameter("password");
		String password2=request.getParameter("password2");
		registerStudentsDAO register=new registerStudentsDAO();
		
		if(regno.equals(null)||regno==""||student_name.equals(null)||student_name==""||faculty.equals(null)||faculty==""||password1.equals(null)||password1==""||password2.equals(null)||password2=="") {
			request.setAttribute("Message","enter all fields");
			getServletContext().getRequestDispatcher("/RegisterStudent.jsp").forward(request,response);
		}
		
		else if(!password1.equals(password2)) {
			request.setAttribute("Message","Password MISMATCH");
			getServletContext().getRequestDispatcher("/RegisterStudent.jsp").forward(request,response);
		}
		else {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/security","root","gerry");
			String query="INSERT INTO students VALUES(?,?,?,?)";

			PreparedStatement ps= myCon.prepareStatement(query);
			
			ps.setString(1,regno);
			ps.setString(2, student_name);
			ps.setString(3, password1);
			ps.setString(4, faculty);
			
			ps.executeUpdate();
			
			System.out.println("Student Details inserted");
			ps.close();
			myCon.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		
		//register.insertToDBS(sql);
		getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
		
		}
	}

}
