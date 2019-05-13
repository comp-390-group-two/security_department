package logins;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GuardDAO {
  String sql ="select * from guards where sec_id=? and password=?";
  String url="jdbc:mysql://localhost:3306/security";
  String usn="root";
  String pwd="gerry";
  
  	public boolean check(String sec_id,String password) {
  		try {
  			Class.forName("com.mysql.cj.jdbc.Driver");
  			Connection myConn = DriverManager.getConnection(url,usn,pwd);
  			
  			PreparedStatement stmt = myConn.prepareStatement(sql);
  			
  			stmt.setString(1,sec_id);
  			stmt.setString(2,password);
  			
  			ResultSet rs= stmt.executeQuery();
  			
  			if(rs.next()) {
  				return true;
  			}
  		}catch(Exception exc) {
  			exc.printStackTrace();
  		}
  		return false;
  	}
}
