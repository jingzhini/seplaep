package com.jin.seplaep.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.seplaep.entity.User;
import com.jin.seplaep.mapper.UserMapper;
import com.jin.seplaep.service.UserService;
import com.jin.seplaep.utils.R;
import com.jin.seplaep.utils.RCode;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;

import static com.jin.seplaep.utils.R.error;
import static com.jin.seplaep.utils.R.success;

/**
 * @Author jin
 * @description 针对表【user】的数据库操作Service实现
 * @createDate 2024-01-22 23:25:26
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public Page<User> findByPage(Integer pageNum, Integer pageSize) {

        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();

        return userMapper.selectPage(new Page<>(pageNum, pageSize), userQueryWrapper);
    }

    @Override
    public Page<User> findByName(String name) {
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        //userQueryWrapper.eq("name", name);
        //模糊查询：
        userQueryWrapper.like("name", name);
        Page<User> namePage = new Page<>(1, 3);

        return userMapper.selectPage(namePage, userQueryWrapper);
    }

    @Override
    public R modifyState(Serializable id) {
        //QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        //User user = userQueryWrapper.eq("id", id).getEntity();
        User user = userMapper.selectById(id);

        if (ObjectUtil.isNotNull(user)) {
            int originState = user.getStatus();
            //位运算与1异或：
            int status = 1 ^ originState;
            user.setStatus(status);

            UpdateWrapper<User> userUpdateWrapper = new UpdateWrapper<>();
            userUpdateWrapper.eq("id", id);

            return success(userMapper.update(user, userUpdateWrapper));
        }
        //自定义状态码枚举类，返回成功信息：
        // error(RCode.ACCEPTED);
        return error("对应id的对象找不到！", 401);
    }


}




