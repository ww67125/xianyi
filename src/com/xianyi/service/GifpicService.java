package com.xianyi.service;

import com.xianyi.entity.Gifpic;
import com.xianyi.mapper.GifpicMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GifpicService {

    @Resource
    private GifpicMapper gifpicDao;

    public int insert(Gifpic pojo){
        return gifpicDao.insert(pojo);
    }

    public int insertList(List< Gifpic> pojos){
        return gifpicDao.insertList(pojos);
    }

    public List<Gifpic> select(){
        return gifpicDao.select();
    }

    public int update(Gifpic pojo){
        return gifpicDao.update(pojo);
    }

}
