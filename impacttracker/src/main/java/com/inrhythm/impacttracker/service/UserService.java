package com.inrhythm.impacttracker.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inrhythm.impacttracker.model.User;
import com.inrhythm.impacttracker.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;

	// get all tasks
	public List<User> getAllUsers() {

		List<User> userList = new ArrayList<>();
		userRepository.findAll().forEach(userList::add);
		return userList;
	}

	// searches for a product by its ID 
	public Optional<User> getUserById(long id)  {
			return userRepository.findById(id);
	}

	// adds new product
	public void addUser(User user) {
		
		//Optional<User> u = userRepository.findById(user.getId()); 
		userRepository.save(user);			
	}	
}
