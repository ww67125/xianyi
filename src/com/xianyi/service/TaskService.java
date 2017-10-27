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

    public List<Task> select(Task pojo){
        return taskMapper.select(pojo);
    }

    public int update(Task pojo){
        return taskMapper.update(pojo);
    }
    public List<Task> findalltask(){
        return taskMapper.findalltask();
    }

}
