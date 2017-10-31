package com.xianyi.controller;

import com.xianyi.entity.Task;
import com.xianyi.service.TaskService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class TaskController {
    @Resource
    private TaskService taskService;
    @RequestMapping("showtask")
    public String finalltask(HttpSession session){
        List<Task> tasks=new ArrayList<>();
        tasks=taskService.findalltask();
        session.setAttribute("tasks",tasks);
        System.out.println("---------------------"+tasks+"---------------");
        return "task";
    }
//    @RequestMapping("addtask")
//    public String addttask(Task task){
//
//    }
    //接受任务
    @RequestMapping("updatetask")
    public String updatetask(Task task){
        taskService.update(task);
        return "redirect:/showtask";
    }
    //删除任务
    @RequestMapping("deletetask")
    public String deletetask(int taskid){
        taskService.delete(taskid);
        return "redirect:/user/userinformation";
    }
    //将数据传给编辑页面
    @RequestMapping("edittask")
    public String edittask(int taskid, HttpServletRequest request){
        Task edtask=taskService.selectbytaskid(taskid);
        request.setAttribute("edtask",edtask);
        return "/addtask";
    }
    //判断新加还是删除
    @RequestMapping("addorupdate")
    public String addorupdate(Task task){
        if (task.getTaskid()==null){
            task.setAddtime(new Date());
            task.setState(1);
            taskService.insert(task);
            return "redirect:/showtask";
        }else {
            taskService.update(task);
            return "redirect:/user/userinformation";
        }
    }

}
