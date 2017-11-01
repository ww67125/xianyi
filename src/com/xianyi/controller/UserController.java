package com.xianyi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xianyi.entity.*;
import com.xianyi.service.*;
import com.xianyi.utils.MessageHelper;
import javafx.collections.transformation.FilteredList;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.io.PrintWriter;
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
	@Resource
	private MessageService messageService;
	@Resource
	private TaskService taskService;
	@Resource
	private ShareService shareService;


	@RequestMapping("/login")
	public String login(User user, HttpSession session){
		List<Friend> friend=new ArrayList<>();
		user=userService.findUSer(user);

		List<Gifpic> gif=new ArrayList<>();
		gif=gifpicService.select();
		session.setAttribute("gifs",gif);

		session.setAttribute("user",user);
		return "index";
		
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		//在session属性范围中删除当前用户对象
		session.removeAttribute("user");

		//重定向到用户登录页面
		return "redirect:/user/user_login.jsp";
	}
	/*注册*/
	@RequestMapping("/register")
	public String register(User user,HttpServletResponse response) throws  Exception{
		if(userService.checkUsername(user.getUsername())){
			response.setContentType("text/html;charSet=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('注册失败，用户名已存在');history.back()</script>");
			return null;    //不走正常流程了
		}else{
			if(userService.insertUser(user)){
				return "index";
			}else{
				return "/user/user_login";
			}
		}
	}


	/*通过用户性别查询*/
	@RequestMapping("/genderUserList")
	public String  genderUserList(User user,Model model){
		List<User> genderUserList = userService.findUserByGender(user);
		model.addAttribute("genderUserList",genderUserList);
		return "redirect:/user_genderPage";
	}

	/*更新好友列表*/
	@RequestMapping("/findfriend")
	public String findfriend(int userid,Model model){

		List<Friend> friendList = friendService.findfriend(userid);

		List<User> userList = new ArrayList<User>();

		for(int i=0;i<friendList.size();i++){

			Friend friend = friendList.get(i);
			User user = new User();
			user.setUserid(friend.getFriendid());
			user = userService.findUserByuserid(user.getUserid());
			userList.add(i, user);
		}
		model.addAttribute("userList", userList);
		return "/user/user_message";
	}

	/*由接收页面转向发送界面 发送指定好友*/
	@RequestMapping("/indexsend")
	public String indexsend(int indexid,Model model){

		Message message = messageService.findIndexMessage(indexid);
		int senderid = message.getSenderid();

		List<User> userList = new ArrayList<User>();
		User user = new User();
		user.setUserid(senderid);
		user = userService.findUserByuserid(user.getUserid());
		userList.add(0, user);
		model.addAttribute("userList", userList);
		return "/user/user_message";
	}


	/*添加用户留言 发送消息*/
	@RequestMapping("/sendMessage")
	public String sendMessage(Message message,HttpSession session){

		User user = (User) session.getAttribute("user");
		message.setSenderid(user.getUserid());
		messageService.insertMessage(message);

		System.out.println("!!!!!!!!!!!!!!!!"+message);

		return "index";
	}
	/*用户检查是否有留言 跳转查看留言界面*/
	@RequestMapping("checkMessageCount")
	public String havaMessage(int userid,Model model,HttpSession session){

		List<Message> messageList = messageService.haveMessage(userid);
		int count = messageList.size();

		System.out.println("+++++++++++"+count);

		String firstMessage=null;

		List<MessageHelper> messHelperList = new ArrayList<MessageHelper>();
		for(int i=0;i<messageList.size();i++){

			Message message = new Message();
			message = messageList.get(i);


			MessageHelper messageHelper = new MessageHelper();
			messageHelper.setId(message.getId());
			messageHelper.setUserid(message.getSenderid());
			messageHelper.setSendTime(message.getSendTime());
			messageHelper.setMessage(message.getMessage());

			User user = new User();
			user.setUserid(message.getSenderid());
			messageHelper.setUsername(userService.findUserByuserid(user.getUserid()).getUsername());

//			System.out.println("+++++++++++"+messageHelper.getUserid());
//			System.out.println("+++++++++++"+messageHelper.getUsername());
			System.out.println("+++++++++++"+messageHelper.getMessage());
//			System.out.println("+++++++++++"+messageHelper.getSendTime());

			messHelperList.add(messageHelper);
			if(i==0){
				firstMessage=message.getMessage();
			}
		}

		model.addAttribute("count",count);

		model.addAttribute("firstMessage",firstMessage);

/*		model.addAttribute("messHelperList", messHelperList);*/

		session.setAttribute("messHelperList", messHelperList);


		return "/user/user_reMessage";
	}

	/*查找指定发送者的留言*/
	@RequestMapping("/findIndexMessage")
	public String findIndexMessage(int id,HttpSession session){

		String indexMessage = null;

		indexMessage = messageService.findIndexMessage(id).getMessage();

		session.setAttribute("firstMessage","");
		session.setAttribute("indexMessage",indexMessage);
		session.setAttribute("indexid", id);
		return "/user/MessageContent/right";
	}
	/*删除指定留言*/
	@RequestMapping("/deleteMessage")
	public String deleteMessage(int id,HttpSession session){

		messageService.deleteMessage(id);

		List<MessageHelper> messageHelpersList =  (List<MessageHelper>) session.getAttribute("messHelperList");

		for(int i=0;i<messageHelpersList.size();i++){
			if(messageHelpersList.get(i).getId()==id){
				messageHelpersList.remove(i);
				i = i-1;
			}
		}

		return "redirect:user_information.jsp";
	}

	@RequestMapping("/userinformation")
	public String userinfomation(HttpSession session, HttpServletRequest request){

		User user = (User) session.getAttribute("user");
		user=userService.findUserByuserid(user.getUserid());
		session.setAttribute("user",user);
		List<Friend> friendList = new ArrayList<>();
		friendList=friendService.findfriend(user.getUserid());

		//1
		request.setAttribute("friendList",friendList);


		List<Task> taskListse = taskService.findtaskbysendid(user.getUserid());

		List<Task> taskListac = taskService.findtaskbyacceptid(user.getUserid());
		//2
		request.setAttribute("taskListse",taskListse);
		request.setAttribute("taskListac",taskListac);

		Share share = new Share();
		share.setShareid(user.getUserid());
		List<Share> shareList = shareService.select(share);
		//3
		request.setAttribute("shareList",shareList);


		List<Message> messageList = messageService.haveMessage(user.getUserid());

		String firstMessage=null;

		int indexid = 0;

		List<MessageHelper> messHelperList = new ArrayList<MessageHelper>();


		for(int i=0;i<messageList.size();i++){

			Message message = new Message();
			message = messageList.get(i);


			MessageHelper messageHelper = new MessageHelper();
			messageHelper.setId(message.getId());
			messageHelper.setUserid(message.getSenderid());
			messageHelper.setSendTime(message.getSendTime());
			messageHelper.setMessage(message.getMessage());

			User user6 = new User();
			user6.setUserid(message.getSenderid());
			messageHelper.setUsername(userService.findUserByuserid(user6.getUserid()).getUsername());

			messHelperList.add(messageHelper);
			if(i==0){
				firstMessage=message.getMessage();
				indexid = message.getId();
			}
		}
		//4
		session.setAttribute("firstMessage",firstMessage);
		session.setAttribute("messHelperList", messHelperList);
		session.setAttribute("indexid",indexid);
		return "/user/user_information";

	}
	//删除好友
	@RequestMapping("deletefriend")
	public String deletefriend(int ffid){
		friendService.deletefriend(ffid);
		return "redirect:/user/userinformation";
	}
	//添加好友
	@RequestMapping("addfriend")
	public String addfriend(int friendid,HttpSession session){
		Friend friend=new Friend();
		User user=(User)session.getAttribute("user");

		friend.setUserid(user.getUserid());
		friend.setFriendid(friendid);
		friendService.insert(friend);
		return "redirect:/user/userinformation";
	}





}
