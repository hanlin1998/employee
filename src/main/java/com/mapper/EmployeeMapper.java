package com.mapper;

import com.bean.Employee;

import java.util.List;

public interface EmployeeMapper {

    List<Employee> selectAll();

    //添加员工
    int insertEmp(Employee employee);

    //删除一条员工记录
    int deleteEmp(int empId);

    Employee selectByPrimaryKey(int empId);

    int updateEmp(Employee employee);
}
