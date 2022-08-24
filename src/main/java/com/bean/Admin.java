package com.bean;

import javax.persistence.Table;

@Table(name = "admin")
public class Admin {
    private String adminName;
    private String adminPwd;
    private int adminLevel;


    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }

    public int getAdminLevel() {
        return adminLevel;
    }

    public void setAdminLevel(int adminLevel) {
        this.adminLevel = adminLevel;
    }

    public Admin() {
    }

    public Admin(String adminName, String adminPwd, int adminLevel) {
        this.adminName = adminName;
        this.adminPwd = adminPwd;
        this.adminLevel = adminLevel;
    }
}
