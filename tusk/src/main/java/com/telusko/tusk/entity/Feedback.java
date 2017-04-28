
package com.telusko.tusk.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Feedback 
{
	private String name;
	@Id
	private String email;
	private String reg;
	private String code;
	private int rating;
	private String msg;

	public Feedback(){}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	
	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


	@Override
	public String toString() {
		return "Feedback [name=" + name + ", email=" + email + ", reg=" + reg + ", code=" + code + ", rating=" + rating
				+ "]";
	}
	
	
}
