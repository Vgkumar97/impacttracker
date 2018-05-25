package com.inrhythm.impacttracker.repository;

import org.springframework.data.repository.CrudRepository;
import com.inrhythm.impacttracker.model.User;

public interface UserRepository extends CrudRepository<User, Long>{
	
}
