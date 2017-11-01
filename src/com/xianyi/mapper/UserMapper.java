package com.xianyi.mapper;

import com.xianyi.entity.Friend;
import com.xianyi.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
	
	User findUser(User user);

	boolean insertUser(User user);

	boolean updateUser(@Param("pojo") User user);

	User findUserByuserid(int userid);

	List<User> checkUsername(String username);

	List<User> findUserByGender(String gender);
}
