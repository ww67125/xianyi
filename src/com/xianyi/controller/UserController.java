package com.xianyi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import com.xianyi.entity.Friend;
import com.xianyi.entity.Gifpic;
import com.xianyi.service.FriendService;
import com.xianyi.service.GifpicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianyi.entity.User;
import com.xianyi.service.UserService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userService;
	@Resource
	private FriendService friendService;
	@Resource
	private GifpicService gifpicService;
	@RequestMapping("/login")
	public String login(User user, HttpSession session){
		List<Friend> friend=new ArrayList<>();
		user=userService.findUSer(user);
		friend=friendService.findfriend(user.getUserid());
		List<Gifpic> gif=new ArrayList<>();
		gif=gifpicService.select();
		session.setAttribute("gifs",gif);
		session.setAttribute("user",friend);
		return "index";
		
	}
	

}
