package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(value = "com.mapper")//扫描数据访问层
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
