package com.service;

import com.bean.Department;

import java.util.List;

public interface DepartmentService {

    //查询全部
    List<Department> selectAllDept();

    //添加部门
    int addDept(Department department);

    //通过主键查询
    Department selectByPrimaryKey(int deptId);

    //通过主键更新部门信息
    int updateDept(Department department);

    int deleteByPrimaryKey(int deptId);
}
