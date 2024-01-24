package com.jin.seplaep.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jin.seplaep.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.seplaep.utils.R;

import java.io.Serializable;
import java.util.List;

/**
* @Author jin
* @description 针对表【user】的数据库操作Service
* @createDate 2024-01-22 23:25:26
*/
public interface UserService extends IService<User> {

    //查询所有用户：
    Page<User> findByPage(Integer pageNum, Integer pageSize);

    //根据name查询所有用户：
    Page<User> findByName(String name);

    //修改用户是否启用/禁用：
    R modifyState(Serializable id);
}
