package com.boilerplatespringmvc.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;

@Controller
public class HomeController {

	@PostMapping("detail")
	public String detail(HttpServletRequest request, Model model){

		String name = request.getParameter("fname");
		String score = request.getParameter("fscore");
		String major = request.getParameter("rd_cn");
		model.addAttribute("name", name);
		model.addAttribute("score", score);
		model.addAttribute("major", major);
		return "detail";
	}

	@GetMapping("edit-profile")
	public String edit()
	{
		return "edit-profile";
	}







	@RequestMapping("/")
    public String display()  
    {  
        return "index";  
    }    

    @GetMapping("/login")
	public String login()
	{
		return "login";
	}

	@GetMapping("/temp")
	public String temp()
	{
		return "login";
	}


	@PostMapping("/login")
	public String login(HttpServletRequest request, Model model)
	{
		String name = request.getParameter("fname");
		String pass = request.getParameter("fpass");
		String message = "";
		if(name.length() > 0 && pass.length() > 0)
			message = "Đầy đủ tin!";
		else
			message = "Vui lòng nhập đầy đủ thông tin";
		model.addAttribute("message", message);
		return "login";
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
