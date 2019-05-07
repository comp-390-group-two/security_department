package logins;

import java.util.List;

public interface Loginservice {

	
	List<students>studentsQry();
	
	public void studentsInsert(students stu);
	
	
	public void studentsUpdate(students stu);
	
	
	public students studentsSearch(students regno);
	
	
	public void studentDel(String regno );
	
	public String getMessage();
	
	
	
}
