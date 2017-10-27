package com.xianyi.service;

import javax.annotation.Resource;

import com.xianyi.entity.Friend;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xianyi.entity.User;
import com.xianyi.mapper.UserMapper;

import java.util.List;

@Service
public class UserService {

	@Resource
	private UserMapper usermapper;
	
	@Transactional
	public User findUSer(User user){
		return usermapper.findUser(user);
	}

}
