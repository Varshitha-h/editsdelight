package com.learn.editsdelight.entities;

public class User {
	private int uid;
	private String username;
	private String uemail;
	private String upswd;
	private String uphoneno;
	private String uadd;
	private String utype;
	public User(String username, String uemail, String upswd, String uphoneno, String uadd, String utype) {
		super();
		this.username = username;
		this.uemail = uemail;
		this.upswd = upswd;
		this.uphoneno = uphoneno;
		this.uadd = uadd;
		this.utype = utype;
	}
	public User(int uid, String username, String uemail, String upswd, String uphoneno, String uadd, String utype) {
		super();
		this.uid = uid;
		this.username = username;
		this.uemail = uemail;
		this.upswd = upswd;
		this.uphoneno = uphoneno;
		this.uadd = uadd;
		this.utype = utype;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpswd() {
		return upswd;
	}
	public void setUpswd(String upswd) {
		this.upswd = upswd;
	}
	public String getUphoneno() {
		return uphoneno;
	}
	public void setUphoneno(String uphoneno) {
		this.uphoneno = uphoneno;
	}
	public String getUadd() {
		return uadd;
	}
	public void setUadd(String uadd) {
		this.uadd = uadd;
	}
	public String getUtype() {
		return utype;
	}
	public void setUtype(String utype) {
		this.utype = utype;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", uemail=" + uemail + ", upswd=" + upswd + ", uphoneno=" + uphoneno
				+ ", uadd=" + uadd + ", utype=" + utype + "]";
	}
	
	
	
	}
