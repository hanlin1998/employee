package com.mapper;

import com.bean.Employee;

import java.util.List;

public interface EmployeeMapper {

    List<Employee> selectAll();
}
