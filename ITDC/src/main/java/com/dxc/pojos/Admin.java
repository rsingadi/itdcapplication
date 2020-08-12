package com.dxc.pojos;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Admin 
{
	@Id
  private String adminname;
  private String password;
  
  public Admin()
  {
	  
  }
public String getAdminname() {
	return adminname;
}
public void setAdminname(String adminname) {
	this.adminname = adminname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Admin(String adminname, String password) {
	super();
	this.adminname = adminname;
	this.password = password;
}
@Override
public String toString() {
	return "Admin [adminname=" + adminname + ", password=" + password + "]";
}
  
  
}
