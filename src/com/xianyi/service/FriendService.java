package com.xianyi.service;

import com.xianyi.entity.Friend;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

import com.xianyi.mapper.FriendMapper;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FriendService {

    @Resource
    private FriendMapper friendMapper;


    public int insert(Friend pojo){
        return friendMapper.insert(pojo);
    }

    public int insertList(List< Friend> pojos){
        return friendMapper.insertList(pojos);
    }

    public List<Friend> select(Friend pojo){
        return friendMapper.select(pojo);
    }

    public int update(Friend pojo){
        return friendMapper.update(pojo);
    }

    public List<Friend> findfriend(int userid){
        return friendMapper.findfriend(userid);
    }
    public boolean deletefriend(int ffid){
        return  friendMapper.delete(ffid);
    }
}
