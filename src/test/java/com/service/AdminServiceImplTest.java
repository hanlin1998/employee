package com.service;

import com.bean.Admin;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
class AdminServiceImplTest {

    @Autowired
    private AdminServiceImpl adminServiceImpl;

    @Test
    void loginAdmin() {
        Admin admin = this.adminServiceImpl.loginAdmin(new Admin("admin", "admin", 1));
        System.out.println(admin.getAdminName() + "\t" + admin.getAdminLevel());
    }
}