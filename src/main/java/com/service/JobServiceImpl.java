package com.service;

import com.bean.Job;
import com.mapper.JobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobMapper jobMapper;

    @Override
    public List<Job> selectAll() {
        return this.jobMapper.selectAll();
    }

    @Override
    public int addJob(Job job) {
        return this.jobMapper.addJob(job);
    }

    @Override
    public int updateJob(Job job) {
        return this.jobMapper.updateJob(job);
    }

    @Override
    public Job selectByPrimaryKey(int jobId) {
        return this.jobMapper.selectByPrimaryKey(jobId);
    }

    @Override
    public int deleteByPrimaryKey(int jobId) {
        return this.jobMapper.deleteByPrimaryKey(jobId);
    }

}
