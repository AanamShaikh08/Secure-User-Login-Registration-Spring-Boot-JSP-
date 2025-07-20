package com.example.springboottask1.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.springboottask1.entity.User;
import com.example.springboottask1.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService service;
	
	@GetMapping("/")
	public String openPage() {
		return "Register";
	}

	@PostMapping("/registeruser")
	public String doRegister(Model model,User user,BindingResult result){
		if(result.hasErrors()) {
			return "Regiter";
		}
		
		String msg =  service.doRegister(user);
		
		model.addAttribute("msg",msg);
		if(msg != null ){
			return "Login";
		}else {
			model.addAttribute("error", "Registration faile. Please try again");
			return "Register";
		}
	}
	
	@PostMapping("/login")
	public String loginUser(@RequestParam("emailOrUsername") String emailOrUsername,
	                        @RequestParam("password") String password,
	                        Model model) {

	    if (emailOrUsername.trim().isEmpty() || password.trim().isEmpty()) {
	        model.addAttribute("error", "Fields cannot be empty");
	        return "Login";
	    }

	    User user = service.login(emailOrUsername, password);
	    if (user == null) {
	        model.addAttribute("error", "Invalid email/username or password");
	        return "Login";
	    }

	    model.addAttribute("FirstName", user.getFname());
	    model.addAttribute("LastName", user.getLname());
	    
	    return "HomePage";
	}

	@RequestMapping("/customError")
	public String handleCustomError(HttpServletRequest request) {
	    return "error"; // Or any other view for the custom error page
	}

	
	
	
	
}
	
