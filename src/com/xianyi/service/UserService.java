package com.xianyi.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import com.xianyi.entity.User;
import com.xianyi.mapper.UserMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class UserService {

	@Resource
	private UserMapper usermapper;
	
	@Transactional
	public User findUSer(User user){
		return usermapper.findUser(user);
	}
	
	@Transactional
	public boolean insertUser(User user){
		if(user.getRegtime()==null){
			user.setRegtime(new Date());
		}
		return usermapper.insertUser(user);
	}
	
	@Transactional
	public boolean updateUser(User user){
		if(user.getRegtime()==null){
			user.setRegtime(new Date());
		}
		return usermapper.updateUser(user);
	}
	
	@Transactional
	public User findUserByuserid(User user){
		return usermapper.findUserByuserid(user);
	}
	
	@Transactional
	public boolean checkUsername(String username){
		return usermapper.checkUsername(username).size()>0;
	}
	
	@Transactional
	public List<User> findUserByGender(User user){
		return usermapper.findUserByGender(user.getGender());
		
	}
	
}
