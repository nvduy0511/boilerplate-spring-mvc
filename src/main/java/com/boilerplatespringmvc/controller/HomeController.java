package com.boilerplatespringmvc.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping; 

@Controller
public class HomeController {
	@RequestMapping("/")  
    public String display()  
    {  
        return "index";  
    }    
	
	@RequestMapping("/home")
	public String home(HttpServletRequest request ,Model theModel) {
		String name = request.getParameter("fname");
		String pass = request.getParameter("fpass");
		theModel.addAttribute("name", name);
		theModel.addAttribute("pass", pass);
		return "home";
	}
}
