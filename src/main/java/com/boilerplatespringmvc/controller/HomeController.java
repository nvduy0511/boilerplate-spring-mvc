package com.boilerplatespringmvc.controller;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import com.boilerplatespringmvc.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Transactional
@RestController
public class HomeController {

	@Autowired
	private SessionFactory sessionFactory;


	@RequestMapping("/getuser")
    public List<User> display()
    {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery< User > cq = cb.createQuery(User.class);
		Root< User > root = cq.from(User.class);
		cq.select(root);
		Query query = session.createQuery(cq);
    	return query.getResultList();
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
