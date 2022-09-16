package com.boilerplatespringmvc.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping; 

@Controller
@RequestMapping("/home")
public class HomeController {
	@RequestMapping("/index")
    public String index()
    {  
        return "home/index";
    }    
	
	@RequestMapping("/about")
	public String about() {
		return "home/about";
	}
}
