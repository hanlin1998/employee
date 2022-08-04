package com.mapper;

import com.bean.Admin;
import tk.mybatis.mapper.common.Mapper;

public interface AdminMapper extends Mapper<Admin> {
    //登录
    Admin loginAdmin(Admin admin);

}
