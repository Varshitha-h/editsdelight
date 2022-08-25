package com.learn.editsdelight.entities;

public class LoginEntity {
	private String useremail;
	private String password;
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public LoginEntity(String useremail, String password) {
		super();
		this.useremail = useremail;
		this.password = password;
	}
	

}
