package com.suru.springtest.security.userapp1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/home")
	public String showHome() {
		return "home";
	}

	@RequestMapping("/showMessage")
	public String showMessage() {
		return "showMessage";
	}

	@RequestMapping("/admin/users.html")
	public String showUsers() {
		return "users";
	}

	@RequestMapping("/admin/messages.html")
	public String showAdminMessages() {
		return "admin_messages";
	}

	@RequestMapping("/admin/main_messages.html")
	public String showMainAdminMessages() {
		return "main_admin_messages";
	}

	@RequestMapping("/admin/other_messages.html")
	public String showOtherMessages() {
		return "other_messages";
	}

	@RequestMapping("/login.html")
	public String showLogin() {
		return "login";
	}

	@RequestMapping("/authenticated.html")
	public String showLoginSuccess() {
		return "authenticated";
	}

}
