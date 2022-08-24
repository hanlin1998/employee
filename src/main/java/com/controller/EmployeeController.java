package com.controller;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.bean.Employee;
import com.service.DepartmentServiceImpl;
import com.service.EmployeeServiceImpl;
import com.service.JobServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private EmployeeServiceImpl employeeService;

    @Autowired
    private DepartmentServiceImpl departmentService;

    @Autowired
    private JobServiceImpl jobService;

    @RequestMapping("/selectAll")
    public String selectAll(int pageNum, Model model) {
        model.addAttribute("pageInfo", this.employeeService.selectAll(pageNum, 8));
        return "admin/searchEmp";
    }

    @RequestMapping("/addEmp")
    public String addEmp(Model model) {
        model.addAttribute("jobs", this.jobService.selectAll());
        model.addAttribute("depts", this.departmentService.selectAllDept());
        return "admin/addEmp";
    }

    @RequestMapping("/insertEmp")
    public String insertEmp(Employee employee, Model model) {
        System.out.println(employee.getHireDate());
        int result = this.employeeService.insertEmp(employee);
        if (result == 1) {
            return "redirect:selectAll?pageNum=1";
        } else {
            model.addAttribute("msg", "添加失败，请完善信息后再次添加");
            return "redirect:addEmp";
        }
    }
}
