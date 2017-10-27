package com.xianyi.entity;

import java.util.Date;

public class Task {
    private Integer taskid;
    private String taskname;
    private String taskcontent;
    private Integer sendid;
    private Integer acceptid;
    private Integer taskscore;
    private Integer state;
    private Date addtime;
    private User senduser;
    private User acceptuser;

    public User getSenduser() {
        return senduser;
    }

    public void setSenduser(User senduser) {
        this.senduser = senduser;
    }

    public User getAcceptuser() {
        return acceptuser;
    }

    public void setAcceptuser(User acceptuser) {
        this.acceptuser = acceptuser;
    }

    public Integer getTaskid() {
        return taskid;
    }

    public void setTaskid(Integer taskid) {
        this.taskid = taskid;
    }

    public String getTaskname() {
        return taskname;
    }

    public void setTaskname(String taskname) {
        this.taskname = taskname;
    }

    public String getTaskcontent() {
        return taskcontent;
    }

    public void setTaskcontent(String taskcontent) {
        this.taskcontent = taskcontent;
    }

    public Integer getSendid() {
        return sendid;
    }

    public void setSendid(Integer sendid) {
        this.sendid = sendid;
    }

    public Integer getAcceptid() {
        return acceptid;
    }

    public void setAcceptid(Integer acceptid) {
        this.acceptid = acceptid;
    }

    public Integer getTaskscore() {
        return taskscore;
    }

    public void setTaskscore(Integer taskscore) {
        this.taskscore = taskscore;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    @Override
    public String toString() {
        return "Task{" +
                "taskid=" + taskid +
                ", taskname='" + taskname + '\'' +
                ", taskcontent='" + taskcontent + '\'' +
                ", sendid=" + sendid +
                ", acceptid=" + acceptid +
                ", taskscore=" + taskscore +
                ", state=" + state +
                ", addtime=" + addtime +
                ", senduser=" + senduser +
                ", acceptuser=" + acceptuser +
                '}';
    }
}
