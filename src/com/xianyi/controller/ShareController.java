package com.xianyi.controller;

import com.xianyi.entity.Share;
import com.xianyi.entity.User;
import com.xianyi.service.ShareService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ShareController {
    @Resource
    private ShareService shareService;
    @RequestMapping("addshare")
    public String addshare(Share share){

        shareService.insert(share);
        return "index";
    }
    @RequestMapping("showall")
    public String showallshare(HttpServletRequest request){
        List<Share> shares=new ArrayList<>();
        shares=shareService.findallshareuser();
        request.setAttribute("shares",shares);
        return "index";
    }
    @RequestMapping("usershare")
    public String showusershare(Integer userid,HttpServletRequest request){
        List<Share> shares=new ArrayList<>();
        shares=shareService.findallsharebyuserid(userid);
        request.setAttribute("shares",shares);
        System.out.println("---------------------"+shares+"---------------");
        return "index";
    }

}
