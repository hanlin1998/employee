package com.controller;

import com.bean.Admin;
import com.service.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminServiceImpl adminService;

    //登录
    @RequestMapping("/login")
    public String loginAdmin(Admin admin, Model model, HttpServletRequest request) {
        Admin loginadmin = this.adminService.loginAdmin(admin);
        if (loginadmin != null) {
            HttpSession session = request.getSession();
            session.setAttribute("adminName", loginadmin.getAdminName());
            session.setAttribute("adminLevel", loginadmin.getAdminLevel());
            return "admin/default";
        } else {
            model.addAttribute("str", "登录失败，请检查填写是否正确！");
            return "login";
        }
    }
}
