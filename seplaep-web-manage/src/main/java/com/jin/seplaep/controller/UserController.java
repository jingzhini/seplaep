package com.jin.seplaep.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jin.seplaep.entity.User;
import com.jin.seplaep.service.UserService;
import com.jin.seplaep.utils.R;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.sql.Wrapper;
import java.util.List;

import static com.jin.seplaep.utils.R.success;

/**
 * (User)表控制层
 *
 * @Author jin
 * @since 2024-01-17 17:52:47
 */
@RestController
@RequestMapping("/user")
public class UserController {


    /**
     * 服务对象
     */
    @Resource
    private UserService userService;


    /**
     * @Author jin
     * @Date 2024/01/23 周二 23:49
     * @Description 运行项目，保留一个测试接口，看看是否能正常访问；
     *
     */
    @GetMapping("/hello")
    public R hello(){
        return success("hello world !");
    }


    /**
     * selectAll分页查询所有数据
     *
     * @param pageNum  分页对象
     * @param pageSize 查询实体
     * @return 所有数据
     */
    @GetMapping("/selectAll")
    public R selectAll(Integer pageNum, Integer pageSize) {
        Page<User> byPage = userService.findByPage(pageNum, pageSize);
        return success(byPage);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(userService.getById(id));
    }


    /**
     * 通过name查询单条数据
     *
     * @param name 用户名
     * @return 单条数据
     */
    @GetMapping("/getByName")
    public R selectOne(@RequestParam String name) {

        return success(userService.findByName(name));
    }

    /**
     * 新增数据
     *
     * @param user 实体对象
     * @return 新增结果
     */
    @PostMapping("/addOne")
    public R insert(@RequestBody User user) {
        return success(userService.save(user));
    }

    /**
     * 修改数据
     *
     * @param user 实体对象
     * @return 修改结果
     */
    @PutMapping("/update")
    public R update(@RequestBody User user) {
        return success(userService.updateById(user));
    }



    /**
     * 修改数据
     *
     * @param id 主键
     * @return 修改id对应用户的权限；
     */
    @PutMapping("/modifyState")
    public R enableOrDisable(@RequestParam Serializable id) {
        return success(userService.modifyState(id));
    }

    /**
     * 删除数据
     *
     * @param idList 主键集合
     * @return 按id批量删除结果
     */
    @DeleteMapping("/batchDeleteByIds")
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(userService.removeByIds(idList));
    }
}

