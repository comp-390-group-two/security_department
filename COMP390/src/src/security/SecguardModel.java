package security;

public class SecguardModel {
	
	private String security_id;
	private String firstName;
	private String lastName;
	private String departMent;
	private String password;
	private String duty;
	
	public SecguardModel(String security_id, String firstName, String lastName, String departMent,String password, String duty) {
		
		this.security_id = security_id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.departMent = departMent;
		this.password = password;
		this.duty = duty;
	}


	public String getSec_id() {
		return security_id;
	}

	public void setSecurity_id(String security_id) {
		this.security_id = security_id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDepartMent() {
		return departMent;
	}

	public void setDepartMent(String departMent) {
		this.departMent = departMent;
	}

	
	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}
	
	
}
