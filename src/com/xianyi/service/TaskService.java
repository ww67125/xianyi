package com.xianyi.service;

import com.xianyi.entity.Task;
import com.xianyi.mapper.TaskMapper;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class TaskService {

    @Resource
    private TaskMapper taskMapper;

    public int insert(Task pojo){
        return taskMapper.insert(pojo);
    }

    public int insertList(List< Task> pojos){
        return taskMapper.insertList(pojos);
    }

    public Task selectbytaskid(int taskid){
        return taskMapper.selectbytaskid(taskid);
    }

    public int update(Task pojo){
        return taskMapper.update(pojo);
    }
    public boolean delete(int taskid){
        return taskMapper.delete(taskid);
    }
    public List<Task> findalltask(){
        return taskMapper.findalltask();
    }
    public List<Task> findtaskbysendid(int sendid){
        return taskMapper.findtaskbysendid(sendid);
    }
    public List<Task> findtaskbyacceptid(int acceptid){
        return taskMapper.findtaskbyacceptid(acceptid);
    }
}
