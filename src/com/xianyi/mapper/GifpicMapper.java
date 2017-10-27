package com.xianyi.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.xianyi.entity.Gifpic;

public interface GifpicMapper {

    int insert(@Param("pojo") Gifpic pojo);

    int insertList(@Param("pojos") List< Gifpic> pojo);

    List<Gifpic> select();

    int update(@Param("pojo") Gifpic pojo);

}
