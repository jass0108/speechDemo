package com.speech.text.speechtotext.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

public class Register {

	private int id;

	@Size(min = 6, max = 15, message = "Enter at least 6 Characters...")
	@NotNull(message = "Please enter username")
	private String uname;

	@Size(min = 6, max = 15, message = "Enter at least 6 and maximum 15 Characters...")
	@NotNull(message = "Please enter password")
	private String password;

	@Size(min = 1, max = 3, message = "Enter at least 1 and Maximum of 3 digits...")
	@NotNull(message = "Please enter age")
	private String age;

	@Size(min = 10, max = 100, message = "Enter at least 10 and Maximum 100 chaaracters allowed...")
	@NotNull(message = "Please enter email")
	@Email
	private String email;

	@Size(min = 10, max = 12, message = "Enter 10 digit mobile number")
	@NotNull(message = "Please enter mobile number")
	private String phone;

	@Size(min = 10, max = 100, message = "Enter at least 10 and Maximum 100 chaaracters allowed...")
	@NotNull(message = "Please enter Full Name")
	private String fullName;

	public Register(int id, String uname, String password, String age, String email, String phone, String fullName) {
		super();
		this.id = id;
		this.uname = uname;
		this.password = password;
		this.age = age;
		this.email = email;
		this.phone = phone;
		this.fullName = fullName;
	}

	public Register() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Register other = (Register) obj;
		if (id != other.id) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "Register [id=" + id + ", uname=" + uname + ", password=" + password + ", age=" + age + ", email="
				+ email + ", phone=" + phone + ", fullName=" + fullName + "]";
	}

}
