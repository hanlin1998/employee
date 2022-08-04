package com.mapper;

import com.bean.Department;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface DepartmentMapper extends Mapper<Department> {

    List<Department> selectAllDept();

    //添加部门
    int addDept(Department department);

    //查询主键
    List<Integer> selectDeptId();
}
