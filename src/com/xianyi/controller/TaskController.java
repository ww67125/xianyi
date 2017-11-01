package com.xianyi.controller;

import com.xianyi.entity.Task;
import com.xianyi.entity.User;
import com.xianyi.service.TaskService;
import com.xianyi.service.UserService;
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
    @Resource
    private UserService userService;
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
        task.setState(2);
        taskService.update(task);
        return "redirect:/showtask";
    }
    //回复任务
    @RequestMapping("retask")
    public String retask(Task task){
        task.setState(3);
        taskService.update(task);
        return "redirect:/user/userinformation";
    }
    //删除任务
    @RequestMapping("deletetask")
    public String deletetask(int taskid){
        taskService.delete(taskid);
        return "redirect:/user/userinformation";
    }
    //放弃任务
    @RequestMapping("giveuptask")
    public String giveuptask(int taskid){
;
        taskService.giveup(taskid);
        return "redirect:/user/userinformation";

    }
    //将数据传给编辑页面
    @RequestMapping("edittask")
    public String edittask(int taskid, HttpServletRequest request){
        Task edtask=taskService.selectbytaskid(taskid);
        request.setAttribute("edtask",edtask);
        return "/addtask";
    }
    //给添加的时候创个空对象过去，编辑添加一体
    @RequestMapping("addtask")
    public String addtask(HttpServletRequest request){
        Task task=new Task();
        request.setAttribute("edtask",task);
        return "/addtask";
    }
    //判断新加还是修改
    @RequestMapping("addorupdate")
    public String addorupdate(Task task,int score,int oldtaskscore){
        if (task.getTaskid()==null){
            task.setAddtime(new Date());
            task.setState(1);
            taskService.insert(task);
            User user=new User();
            user.setScore(score-task.getTaskscore());
            user.setUserid(task.getSendid());
            userService.updateUser(user);
            return "redirect:/showtask";
        }else {
            if (oldtaskscore<task.getTaskscore()){
                int newscore=task.getTaskscore()-oldtaskscore;
                User user=userService.findUserByuserid(task.getSendid());
                user.setScore(score-newscore);

                userService.updateUser(user);
            }else if(task.getTaskscore()<oldtaskscore){
                int newscore=oldtaskscore-task.getTaskscore();
                User user=userService.findUserByuserid(task.getSendid());
                user.setScore(score+newscore);

                userService.updateUser(user);
            }
            taskService.update(task);
            return "redirect:/user/userinformation";
        }
    }
    //判断任务是否完成
    @RequestMapping("yesorno")
    public String yesorno(int taskid,int flag){
        Task task=taskService.selectbytaskid(taskid);
        if (flag==0){
            task.setState(2);
        }else {
            task.setState(4);
            User user=userService.findUserByuserid(task.getAcceptid());
            user.setUserid(task.getAcceptid());
            user.setScore(user.getScore()+task.getTaskscore());
            userService.updateUser(user);
        }
        taskService.update(task);
        return "redirect:/user/userinformation";
    }

}
