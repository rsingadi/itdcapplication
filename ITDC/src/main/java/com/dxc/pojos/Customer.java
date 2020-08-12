package com.dxc.pojos;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Customer
{
	
	private String firstname;
	private String pass;	
	@Id
	private String mobile;
	
	public Customer()
	{
		
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Customer(String firstname, String pass, String mobile) {
		super();
		this.firstname = firstname;
		this.pass = pass;
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "Customer [firstname=" + firstname + ", pass=" + pass + ", mobile=" + mobile + "]";
	}


	
	
	
}
