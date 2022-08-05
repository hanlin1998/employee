package com.mapper;

import com.bean.Department;

import java.util.List;

public interface DepartmentMapper {

    List<Department> selectAllDept();

    //添加部门
    int addDept(Department department);

    //查询主键
    List<Integer> selectDeptId();

    Department selectByPrimaryKey(int deptId);

    int updateDept(Department department);

    int deleteByPrimaryKey(int deptId);
}
