package com.schooltree.wapp;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TeacherRepository extends JpaRepository<Teacher, Integer>{

	Teacher findByPhone(String phone);
	Boolean existsByPhone(String phone);
 
	Teacher findById(int id);
}
