package com.example.springboottask1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springboottask1.dao.UserDao;
import com.example.springboottask1.entity.User;

@Service
public class UserService {

	@Autowired
	UserDao dao;
	
	public String  doRegister(User user) {
		
		return dao.doRegister(user);
	}

	public User login(String emailOrUsername, String password) {
	    if (emailOrUsername == null || emailOrUsername.trim().isEmpty() || password == null || password.trim().isEmpty()) {
	        return null; // Avoid blank login
	    }
	    return dao.findByEmailOrUsernameAndPassword(emailOrUsername, password);
	}

	
}
