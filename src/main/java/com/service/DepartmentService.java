package com.service;

import com.bean.Department;

import java.util.List;

public interface DepartmentService {

    //查询全部
    List<Department> selectAllDept();

    //添加部门
    int addDept(Department department);
}
