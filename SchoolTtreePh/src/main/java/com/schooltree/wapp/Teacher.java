package com.schooltree.wapp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_teacher")
public class Teacher {

	@Id
	private int id;
	
	@Column(name = "firstname")
	private String firstname;
	
	@Column(name = "lastname")
	private String lastname;
	
	@Column(name = "phone")
	private String phone;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "address_line1")
	private String address_line1;
	
	@Column(name = "address_line2")
	private String address_line2;
	
	@Column(name = "postcode")
	private String postcode;
	
	@Column(name = "state")
	private String state;
	
	@Column(name = "area")
	private String area;
	
	@Column(name = "education")
	private String education;
	
	@Column(name = "country")
	private String country;
	
	@Column(name = "additional_details")
	private String additional_details;
	
	@Column(name = "experience")
	private String experience;
	
	@Column(name = "password")
	private String password;
	
	@Column(name= "subjects")
	private String subjects;
	
	@Column(name= "classesToTeach")
	private String classesToTeach;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress_line1() {
		return address_line1;
	}

	public void setAddress_line1(String address_line1) {
		this.address_line1 = address_line1;
	}

	public String getAddress_line2() {
		return address_line2;
	}

	public void setAddress_line2(String address_line2) {
		this.address_line2 = address_line2;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAdditional_details() {
		return additional_details;
	}

	public void setAdditional_details(String additional_details) {
		this.additional_details = additional_details;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSubjects() {
		return subjects;
	}

	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}

	public String getClassesToTeach() {
		return classesToTeach;
	}

	public void setClassesToTeach(String classesToTeach) {
		this.classesToTeach = classesToTeach;
	}
	
	
	
	
	
}
