package com.example.ums.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import com.example.ums.entity.User;
import com.example.ums.service.UserService;


@Controller
public class UserController {
	
	private final UserService userService;
	
	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}

	// @RequestMapping(path = "/add-user", method = RequestMethod.POST)
	@PostMapping("/add-user")
	public String addUser(User user) {
		userService.addUser(user);
		return "index.jsp";
	}
	
	@GetMapping("/display-users")
	public String findAllUsers(Model model) {
		List<User> user = userService.findAllUsers();
		model.addAttribute("user", user);
		return "display-users.jsp";
	}
	
	@GetMapping("/delete-user")
	public String deleteUser(@RequestParam("user_id") int userId) {
		userService.deleteUser(userId);
		return "redirect:/display-users";
	}
	
	@GetMapping("/update-user")
	public String updateUserRequest(@RequestParam("user_id") int userId , Model model) {
		User user = userService.findUserById(userId);
		model.addAttribute("user", user);
		return "update-user.jsp";
	}
	
	@PostMapping("/update-user")
	public String updateUser(@ModelAttribute User user) {
		userService.updateUser(user);
		return "redirect:/display-users";
		
	}

}
