package com.xianyi.mapper;

import com.xianyi.entity.Task;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TaskMapper {

    int insert(@Param("pojo") Task pojo);

    int insertList(@Param("pojos") List<Task> pojo);

    Task selectbytaskid(int taskid);

    int update(@Param("pojo") Task pojo);
    boolean delete(int taskid);
    List<Task> findalltask();
    List<Task> findtaskbysendid(int sendid);
    List<Task> findtaskbyacceptid(int acceptid);

}
