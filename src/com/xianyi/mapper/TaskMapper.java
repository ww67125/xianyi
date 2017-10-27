package com.xianyi.mapper;

import com.xianyi.entity.Task;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TaskMapper {

    int insert(@Param("pojo") Task pojo);

    int insertList(@Param("pojos") List<Task> pojo);

    List<Task> select(@Param("pojo") Task pojo);

    int update(@Param("pojo") Task pojo);
    List<Task> findalltask();


}
