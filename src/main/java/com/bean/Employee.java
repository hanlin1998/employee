package com.bean;

import javax.persistence.Table;
import java.util.Date;

@Table(name = "employees")
public class Employee {
    private int empId;
    private String empName;
    private String email;
    private String phone;
    private Date hireDate;
    private int jobId;
    private int salary;
    private int deptId;
    private Job empJob;
    private Department empDept;

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getHireDate() {
        return hireDate;
    }

    public void setHireDate(Date hireDate) {
        this.hireDate = hireDate;
    }

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public Job getEmpJob() {
        return empJob;
    }

    public void setEmpJob(Job empJob) {
        this.empJob = empJob;
    }

    public Department getEmpDept() {
        return empDept;
    }

    public void setEmpDept(Department empDept) {
        this.empDept = empDept;
    }

    public Employee() {
    }

    public Employee(int empId, String empName, String email, String phone, Date hireDate, int jobId, int salary, int deptId) {
        this.empId = empId;
        this.empName = empName;
        this.email = email;
        this.phone = phone;
        this.hireDate = hireDate;
        this.jobId = jobId;
        this.salary = salary;
        this.deptId = deptId;
    }
}
