package com.service;

import com.bean.Employee;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface EmployeeService {

    PageInfo<Employee> selectAll(int pageNum, int pageSize);

    int insertEmp(Employee employee);

    int deleteEmp(int empId);

    Employee selectByPrimaryKey(int empId);

    int updateEmp(Employee employee);

}
