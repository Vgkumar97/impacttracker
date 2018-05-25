package com.inrhythm.impacttracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
//@SessionAttributes("name")
public class LoginController {

	@RequestMapping("/login")
	//@RequestMapping(value="/login", method = RequestMethod.POST)
	public String showWelcomePage(){
	    	
	   return "welcome";
	}	
	
	@RequestMapping("/addUser")
	public String addUser(){
        System.out.println("****** POST method called. *******");

    	
		   return "addUser";
	}
	
	@RequestMapping("/getUser")
	public String getUser(){
        System.out.println("****** GET method called. *******");

    	
		   return "getUser";
	}
	
	   @PostMapping("/hello")
	   public String sayHello(@RequestParam("name") String name, Model model) {
		   System.out.println("****** POST method called. *******");
		   
	      model.addAttribute("name", name);
	      return "hello";
	   }

}
