package com.jin.seplaep.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jin.seplaep.entity.DynamicList;
import com.jin.seplaep.service.DynamicListService;
import com.jin.seplaep.utils.R;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @Author jin
 * @Date 2024/03/19 周二 1:50
 * @Description 动态列表
 */
@RestController
@RequestMapping("dynamicList")
public class DynamicListController {

    @Resource
    private DynamicListService dynamicListService;

    @GetMapping
    public R selectAll(Page<DynamicList> page, DynamicList dynamicList) {
        /**
         * 页查询所有动态数据
         *
         * @param page        分页对象
         * @param dynamicList 查询实体
         */
        return R.success(dynamicListService.page(page, new QueryWrapper<>(dynamicList)));

    }
}
