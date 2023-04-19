package com.schooltree.wapp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_subject")
public class Subject {
	
	@Id
	private int id;

	@Column(name = "subject_name")
	private String subject_name;
	
	@Column(name = "subject_description")
	private String subject_description;
	
	@Column(name = "grade")
	private String grade;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubject_name() {
		return subject_name;
	}

	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}

	public String getSubject_description() {
		return subject_description;
	}

	public void setSubject_description(String subject_description) {
		this.subject_description = subject_description;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
	
}
