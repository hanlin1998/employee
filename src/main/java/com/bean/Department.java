package com.bean;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "departments")
public class Department {

    @Id
    private int deptId;
    private String deptName;
    private String deptLocation;

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptLocation() {
        return deptLocation;
    }

    public void setDeptLocation(String deptLocation) {
        this.deptLocation = deptLocation;
    }

    public Department() {
    }

    public Department(int deptId, String deptName, String deptLocation) {
        this.deptId = deptId;
        this.deptName = deptName;
        this.deptLocation = deptLocation;
    }
}
