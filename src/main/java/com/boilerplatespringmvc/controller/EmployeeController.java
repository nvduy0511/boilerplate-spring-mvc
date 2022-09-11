package com.boilerplatespringmvc.controller;

import com.boilerplatespringmvc.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @RequestMapping(value={"/", "/addEmployee"}, method = RequestMethod.GET)
    public String addEmployee(Model model) {
        model.addAttribute("employee", new Employee());
        List<String> listFavorite = new ArrayList<String>();
        listFavorite.add("Bơi lội");
        listFavorite.add("Nghe nhạc");
        listFavorite.add("Chạy bộ");
        listFavorite.add("Xem phim");
        listFavorite.add("Đọc truyện");
        model.addAttribute("listFavorite", listFavorite);
        List<String> listPosition = new ArrayList<String>();
        listPosition.add("Developer");
        listPosition.add("Designer");
        listPosition.add("Tester");
        listPosition.add("QA");
        model.addAttribute("listFavorite", listFavorite);
        model.addAttribute("listPosition", listPosition);
        return "employee/add-employee";
    }
    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
    public String doAddEmployee(@ModelAttribute("employee") Employee employee, ModelMap modelMap) {
        modelMap.addAttribute("employee", employee);
        return "employee/view-employee";
    }
}
