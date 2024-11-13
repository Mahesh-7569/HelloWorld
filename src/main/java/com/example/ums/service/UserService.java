package com.example.ums.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.ums.entity.User;
import com.example.ums.repository.UserRepository;

@Service
public class UserService {
	
	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}

	public void addUser(User user) {
		userRepository.save(user);
		
	}

	public List<User> findAllUsers() {
		return userRepository.findAll();
		
	}

	public void deleteUser(int userId) {
		userRepository.deleteById(userId);
		
	}

	public User findUserById(int userId) {
		
		//return userRepository.findById(userId).orElseThrow(()-> new RuntimeException());
	return userRepository.getById(userId);
//2nd Way->		
//		Optional<User> optional=userRepository.findById(userId);
//		if(optional.isPresent()) {
//			return optional.get();
//		}else {
//			//throw new UserNotFoundByIdException();
//			return null;
//		
//		}
		
	}

	public void updateUser(User user) {
		userRepository.save(user);
		
	}
	
	

}
