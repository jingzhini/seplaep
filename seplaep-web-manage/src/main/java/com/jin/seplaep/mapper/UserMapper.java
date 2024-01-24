package com.jin.seplaep.mapper;

import com.jin.seplaep.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @Author jin
* @description 针对表【user】的数据库操作Mapper
* @createDate 2024-01-22 23:25:26
* @Entity com.jin.seplaep.entity.User
*/
@Mapper
public interface UserMapper extends BaseMapper<User> {

}




