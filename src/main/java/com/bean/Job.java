package com.bean;

import javax.persistence.Table;

@Table(name = "jobs")
public class Job {
    private int jobId;
    private String jobTitle;
    private int minSal;
    private int maxSal;

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public int getMinSal() {
        return minSal;
    }

    public void setMinSal(int minSal) {
        this.minSal = minSal;
    }

    public int getMaxSal() {
        return maxSal;
    }

    public void setMaxSal(int maxSal) {
        this.maxSal = maxSal;
    }

    public Job() {
    }

    public Job(int jobId, String jobTitle, int minSal, int maxSal) {
        this.jobId = jobId;
        this.jobTitle = jobTitle;
        this.minSal = minSal;
        this.maxSal = maxSal;
    }
}
