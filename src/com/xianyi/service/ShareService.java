package com.xianyi.service;

import com.xianyi.entity.Share;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

import com.xianyi.mapper.ShareMapper;

@Service
public class ShareService {

    @Resource
    private ShareMapper shareMapper;

    public int insert(Share pojo){
        return shareMapper.insert(pojo);
    }

    public int insertList(List< Share> pojos){
        return shareMapper.insertList(pojos);
    }

    public List<Share> select(Share pojo){
        return shareMapper.select(pojo);
    }
    public List<Share> select(){
        return shareMapper.select();
    }

    public int update(Share pojo){
        return shareMapper.update(pojo);
    }
    public List<Share> findsharebyuserid(int userid){
        return shareMapper.findsharebyuserid(userid);
    }
    public List<Share> findallsharebyuserid(int userid) {
        return shareMapper.findallsharebyuserid(userid);
    }
    public List<Share> findallshareuser(){
        return shareMapper.findallshareuser();
    }
}
