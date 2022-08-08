package com.mapper;

import com.bean.Job;

import java.util.List;

public interface JobMapper {

    //查询全部职业
    List<Job> selectAll();

    //添加职位
    int addJob(Job job);

    //修改职位
    int updateJob(Job job);

    Job selectByPrimaryKey(int jobId);

    int deleteByPrimaryKey(int jobId);
}
