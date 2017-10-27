package com.xianyi.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.xianyi.entity.Share;

public interface ShareMapper {

    int insert(@Param("pojo") Share pojo);

    int insertList(@Param("pojos") List< Share> pojo);

    List<Share> select(@Param("pojo") Share pojo);
    List<Share> select();
    List<Share> findsharebyuserid(int userid);
    List<Share> findallsharebyuserid(int userid);
    List<Share> findallshareuser();
    int update(@Param("pojo") Share pojo);

}
