package security;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GuardRegisterDAO {
	
	String sql="INSERT INTO guards(sec_id,fisrt_name,last_name,department,password,) VALUES (?,?,?,?,?) ";
	String url ="jdbc:mysql://localhost:3306/security";
	String usn ="root";
	String pwd ="gerry";
	
public boolean check(String sec_id, String firstName, String lastName, String departMent,String password ) {
	try {
	Connection con= DriverManager.getConnection(url, usn, pwd);
	PreparedStatement myStmt = con.prepareStatement(sql);
	
	myStmt.setString(1,sec_id);
	myStmt.setString(2, firstName);
	myStmt.setString(3, lastName);
	myStmt.setString(4, departMent);
	myStmt.setString(5, password);
	
	ResultSet rs = myStmt.executeQuery();
		if(rs.next()) {
			return true;
		}
	
	}catch(Exception exc) {
		exc.printStackTrace();
	}
	return false;
}
}
