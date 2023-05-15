package com.web.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping({"/FrontPage","/"})
	public String homePage(Model model) {
		return "FrontPage";
	}
	
//	@GetMapping("/sortShose")
//	public String sort(Model model) {
//		return "sortShose";
//	}
	
}
