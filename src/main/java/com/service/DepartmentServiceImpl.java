package com.service;

import com.bean.Department;
import com.mapper.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public List<Department> selectAllDept() {
        return this.departmentMapper.selectAllDept();
    }

    @Override
    public int addDept(Department department) {
        for (Integer deptid : this.departmentMapper.selectDeptId()) {
            if (deptid == department.getDeptId()) {
                return -1;
            }
        }
        return this.departmentMapper.addDept(department);
    }
}
