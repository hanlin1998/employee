package com.controller;

import com.bean.Department;
import com.service.DepartmentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/department")
public class DepartmentController {

    @Autowired
    private DepartmentServiceImpl departmentServiceImpl;

    @RequestMapping("/selectAll")
    public String SelectAllDept(Model model) {
        List<Department> departments = this.departmentServiceImpl.selectAllDept();
        model.addAttribute("departments", departments);
        return "admin/searchDept";
    }

    @RequestMapping("/addDept")
    public String addDept(Department department, Model model) {
        int resout = this.departmentServiceImpl.addDept(department);
        if (resout == 1) {
            return "redirect:selectAll";
        } else {
            if (resout == -1) {
                model.addAttribute("str", "部门编号冲突导致添加失败！");
            } else {
                model.addAttribute("str", "系统错误导致添加失败！");
            }
            return "admin/addDept";
        }

    }

}
