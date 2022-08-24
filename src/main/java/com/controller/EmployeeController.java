package com.controller;

import com.service.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private EmployeeServiceImpl employeeService;

    @RequestMapping("/selectAll")
    public String selectAll(int pageNum, Model model) {
        model.addAttribute("pageInfo", this.employeeService.selectAll(pageNum, 3));
        return "admin/searchEmp";
    }

}
