package com.service;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.bean.Department;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@RunWith(SpringRunner.class)
class DepartmentServiceImplTest {

    @Autowired
    private DepartmentServiceImpl departmentServiceImpl;

    @Test
    void selectAllDept() {
    }

    @Test
    void addDept() {
    }

    @Test
    void selectByPrimaryKey() {
        Department department = this.departmentServiceImpl.selectByPrimaryKey(10);
        System.out.println(department.getDeptName());
    }

    @Test
    void updateDept() {
        Department department = new Department(100, "部门", "添加");
        this.departmentServiceImpl.updateDept(department);
    }
}