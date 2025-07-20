package com.example.springboottask1.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.springboottask1.entity.User;

@Repository
public class UserDao {
	
	@Autowired
	SessionFactory factory;
	
	@PersistenceContext
	private EntityManager entityManager;  // Inject the entity manager
	
	public String doRegister(User user) {
		Session session = factory.openSession();
		session.save(user);
		session.beginTransaction().commit();
		
		return "User Registration Successfull !!! You can further procced for Login ! ";
	}

	
	public User findByEmailOrUsernameAndPassword(String emailOrUsername, String password) {
		 String query = "SELECT u FROM User u WHERE (u.email = :emailOrUsername OR u.username = :emailOrUsername) AND u.password = :password";
	        return entityManager.createQuery(query, User.class)
	                            .setParameter("emailOrUsername", emailOrUsername)
	                            .setParameter("password", password)
	                            .getSingleResult();
	}

	
}
