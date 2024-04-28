package com.quotationbuilding1.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	
	public String name, email, contactno, bussinessname,bussinessdetails,password,companydescription;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getBussinessname() {
		return bussinessname;
	}

	public void setBussinessname(String bussinessname) {
		this.bussinessname = bussinessname;
	}

	public String getBussinessdetails() {
		return bussinessdetails;
	}

	public void setBussinessdetails(String bussinessdetails) {
		this.bussinessdetails = bussinessdetails;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCompanydescription() {
		return companydescription;
	}

	public void setCompanydescription(String companydescription) {
		this.companydescription = companydescription;
	}
	
}
