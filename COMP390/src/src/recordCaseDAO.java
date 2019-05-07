

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
public class recordCaseDAO {
	
	
	String url="jdbc:mysql://localhost:3306/COMP390";
	String username="root";
	String password="";
	String sql="INSERT INTO complains(date_of_occurrence,your_regno,venue,specific_time_of_occurance,people_involved,reason_of_accused)VALUES(?,?,?,?,?,?)";
	Connection con;
	Statement stmt;
	public void ConnecttoDB() {
		
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection(url,username,password);
			stmt=con.createStatement();
			System.out.println("Connection Sucessful");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	
	public void insertToDB(String QueryInsert) {
		
		
	try {
		
		ConnecttoDB();
		
		stmt.executeUpdate(QueryInsert);
		System.out.println(" close to Inserted");
		
		
	} catch (Exception e) {
		// TODO: handle exception
	}
		
	}
	
	
	

}
