

import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logins.reasonDAO;
import logins.registerStudentsDAO;

/**
 * Servlet implementation class AdGuaRDservlet
 */
@WebServlet("/AdGuaRDservlet")
public class AdGuaRDservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdGuaRDservlet() {
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
	String date=request.getParameter("date");
	String ssn=request.getParameter("ssn");
	String phoneno=request.getParameter("phone_no");
	String name=request.getParameter("name");
	
	System.out.println(phoneno);
	int z=phoneno.length();
	System.out.println(z);
	
  Date today=new Date();

 LocalDate two=LocalDate.now();
	
	
	if(date==""||date.equals(null)||ssn==""||ssn.equals(null)||name==""||name.equals(null)||phoneno==""||phoneno.equals(null)) {
		
		request.setAttribute("Message","ALL FIELDS ARE MANDATORY .REGISTRATION FAILED");
		getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
		
	}
	
	else if (date.compareTo(two.toString())<0) {
		
		request.setAttribute("Message","enter date today or coming days :Registration failed");
		getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
		
		
	}
	else if(phoneno.length()>10||phoneno.length()<10) {
		request.setAttribute("Message","put 10 numbers,REGISTRATION FAILED");
		getServletContext().getRequestDispatcher("/OperationalDashboard.jsp").forward(request,response);
		
	}
	else {
		
		reasonDAO one_GUARD=new reasonDAO();
		
		HttpSession session=request.getSession();
		String officer=(String)session.getAttribute("officer");
	
		System.out.println(officer);
		String sql;
		sql="INSERT INTO guards(REGISTRATION_OFFICER,date,FULL_NAMES,SSNO,PHONE_NUMBER) Values('"+officer+"','"+date+"','"+name+"','"+ssn+"','"+phoneno+"')";
		
		one_GUARD.insertToDB(sql);
		
		response.sendRedirect("OperationalDashboard.jsp");
		
	}
	
	
	}

}
