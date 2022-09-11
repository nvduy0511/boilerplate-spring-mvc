package com.boilerplatespringmvc.controller;

import com.boilerplatespringmvc.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PersonController {
    @GetMapping("/add-person")
    public String viewPerson(Model model)
    {
        model.addAttribute("person", new Person());
        return "add-person";
    }

    @RequestMapping(value = "/view-person", method = RequestMethod.POST)
    public String doAddEmployee(@ModelAttribute("person") Person person, ModelMap modelMap) {
        person.setName(person.getName().toUpperCase());
        modelMap.addAttribute("person", person);
        return "view-person";
    }
}
