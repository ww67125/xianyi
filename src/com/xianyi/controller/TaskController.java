package com.xianyi.controller;

import com.xianyi.entity.Task;
import com.xianyi.service.TaskService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
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
        return "index";
    }
    @RequestMapping("addtask")
    public String addttask(){
        Task task=new Task();
        task.setTaskname("test");
        task.setSendid(1);
        task.setTaskscore(10);
        task.setAddtime(new Date());
        task.setState(1);
        task.setAcceptid(2);
        taskService.insert(task);
        return "index";
    }


}
