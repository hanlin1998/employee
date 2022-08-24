package com.controller;

import com.bean.Job;
import com.mapper.JobMapper;
import com.service.JobService;
import com.service.JobServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/job")
public class JobController {

    @Autowired
    private JobServiceImpl jobService;

    @RequestMapping("/selectAll")
    public String selectAll(Model model) {
        model.addAttribute("jobs", this.jobService.selectAll());
        return "admin/searchJob";
    }

    @RequestMapping("/addJob")
    public String addJob(Job job, Model model) {
        int resole = this.jobService.addJob(job);
        if (resole == 0) {
            model.addAttribute("str", "添加失败，请在次尝试添加");
            return "admin/addJob";
        } else {
            return "redirect:selectAll";
        }
    }

    @RequestMapping("/updateJob")
    public String updateJob(Job job, Model model) {
        int resole = this.jobService.updateJob(job);
        if (resole == 0) {
            model.addAttribute("str", "修改失败，请在次尝试修改");
            return "forward:selectByPrimaryKey?jobId=" + job.getJobId();
        } else {
            return "redirect:selectAll";
        }
    }

    @RequestMapping("/selectByPrimaryKey")
    public String selectByPrimaryKey(int jobId, Model model) {
        model.addAttribute("job", this.jobService.selectByPrimaryKey(jobId));
        return "admin/updateJob";
    }

    @RequestMapping("/deleteByPrimaryKey")
    public String deleteByPrimaryKey(int jobId) {
        this.jobService.deleteByPrimaryKey(jobId);
        return "redirect:selectAll";
    }

    @RequestMapping("/selectByPrimaryKeyJson")
    @ResponseBody
    public Job selectByPrimaryKeyJson(int jobId, Model model) {
        return this.jobService.selectByPrimaryKey(jobId);
    }

}
