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

    @Override
    public Department selectByPrimaryKey(int deptId) {
        return this.departmentMapper.selectByPrimaryKey(deptId);
    }

    @Override
    public int updateDept(Department department) {
        return this.departmentMapper.updateDept(department);
    }

    @Override
    public int deleteByPrimaryKey(int deptId) {
        return this.departmentMapper.deleteByPrimaryKey(deptId);
    }
}
