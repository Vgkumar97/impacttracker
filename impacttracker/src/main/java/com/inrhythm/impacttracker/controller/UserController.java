package com.inrhythm.impacttracker.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.inrhythm.impacttracker.model.User;
import com.inrhythm.impacttracker.service.UserService;

@RestController
public class UserController {

	
	// post /users
	// adding tasks
	
	//get /users
	
	
	@Autowired
	private UserService userService;

	// * Retrieve a list of tasks
	
	@RequestMapping("/users")
	public List<User> getUsers() {
        System.out.println("****** REST GET method called. *******");
		return userService.getAllUsers();
	}

	// * Return list of products by type
	@RequestMapping(method = RequestMethod.GET, value = "/users/{id}")
	public Optional<User> getProductById(@PathVariable long id) throws Exception{
		   System.out.println("****** REST USERS GET method called. *******");
		   System.out.println("ID : " + id);
		   
		return userService.getUserById(id);
	}
	
	// Add a new task for one user
	@RequestMapping(method = RequestMethod.POST, value = "/users")
	public void addTaskPerUser(@RequestBody User user) throws Exception  {
		   System.out.println("****** REST USERS POST method called. *******");
		   System.out.println("NAME : " + user.getUserName());
		   System.out.println("DESCRIPTION : " + user.getTaskDescription());
		   System.out.println("DATE : " + user.getDate());

		userService.addUser(user);
		
	}


	
}
