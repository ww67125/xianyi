package com.xianyi.mapper;

import com.xianyi.entity.Friend;
import com.xianyi.entity.User;

import java.util.List;

public interface UserMapper {
	
	User findUser(User user);

	boolean insertUser(User user);

	boolean updateUser(User user);

	User findUserByuserid(User user);

	List<User> checkUsername(String username);

	List<User> findUserByGender(String gender);
}
