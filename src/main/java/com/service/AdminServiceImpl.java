package com.service;

import com.bean.Admin;
import com.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    //登录
    @Override
    public Admin loginAdmin(Admin admin) {
        return this.adminMapper.loginAdmin(admin);
    }
}
