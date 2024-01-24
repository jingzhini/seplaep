package com.jin.seplaep.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jin.seplaep.entity.AdminUser;
import com.jin.seplaep.service.AdminUserService;
import com.jin.seplaep.utils.R;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

import static com.jin.seplaep.utils.R.*;

/**
 * (AdminUser)表控制层
 *
 * @Author jin
 * @since 2024-01-17 17:52:36
 */
@RestController
@RequestMapping("adminUser")
public class AdminUserController   {
    /**
     * 服务对象
     */
    @Resource
    private AdminUserService adminUserService;

    /**
     * 分页查询所有数据
     *
     * @param page      分页对象
     * @param adminUser 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<AdminUser> page, AdminUser adminUser) {
        return success(adminUserService.page(page, new QueryWrapper<>(adminUser)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(adminUserService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param adminUser 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody AdminUser adminUser) {
        return success(adminUserService.save(adminUser));
    }

    /**
     * 修改数据
     *
     * @param adminUser 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody AdminUser adminUser) {
        return success(adminUserService.updateById(adminUser));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(adminUserService.removeByIds(idList));
    }
}

