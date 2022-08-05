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

    //查询全部部门
    @RequestMapping("/selectAll")
    public String SelectAllDept(Model model) {
        List<Department> departments = this.departmentServiceImpl.selectAllDept();
        model.addAttribute("departments", departments);
        return "admin/searchDept";
    }

    //添加部门
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

    //修改部门
    @RequestMapping("/selectOneDept")
    public String selectOneDept(int deptId, Model model) {
        model.addAttribute("dept", this.departmentServiceImpl.selectByPrimaryKey(deptId));
        return "admin/updateDept";
    }

    @RequestMapping("/updateDept")
    public String updateDept(Department department, Model model) {
        int resout = this.departmentServiceImpl.updateDept(department);
        if (resout == 1) {
            return "redirect:selectAll";
        } else {
            model.addAttribute("str", "修改失败，请重新尝试！");
            model.addAttribute("dept", this.departmentServiceImpl.selectByPrimaryKey(department.getDeptId()));
            return "admin/updateDept";
        }
    }

    @RequestMapping("/deleteByPrimaryKey")
    public String deleteByPrimaryKey(Integer deptId) {
        this.departmentServiceImpl.deleteByPrimaryKey(deptId);
        return "redirect:selectAll";
    }

}
