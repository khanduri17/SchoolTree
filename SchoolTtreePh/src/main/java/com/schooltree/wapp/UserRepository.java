package com.schooltree.wapp;

 

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>{

	
	User findByEmail(String email);
	User findByPhone(String email);
	Boolean existsByPhone(String phone);
}
