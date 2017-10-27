package com.xianyi.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import com.xianyi.entity.Friend;

public interface FriendMapper {

    int insert(@Param("pojo") Friend pojo);

    int insertList(@Param("pojos") List< Friend> pojo);

    List<Friend> select(@Param("pojo") Friend pojo);

    int update(@Param("pojo") Friend pojo);
    List<Friend> findfriend(int userid);

}
