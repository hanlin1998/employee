package com.service;

import com.bean.Employee;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public PageInfo<Employee> selectAll(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<Employee> pageInfoEmp = new PageInfo<>(this.employeeMapper.selectAll());
        return pageInfoEmp;
    }

    @Override
    public int insertEmp(Employee employee) {
        return this.employeeMapper.insertEmp(employee);
    }
}
