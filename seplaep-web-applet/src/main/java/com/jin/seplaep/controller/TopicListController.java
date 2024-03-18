package com.jin.seplaep.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jin.seplaep.entity.TopicList;
import com.jin.seplaep.service.TopicListService;
import com.jin.seplaep.utils.R;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

import static com.jin.seplaep.utils.R.*;

/**
 * @Author jin
 * @Date 2024/03/19 周二 1:13
 * @Description 话题列表
 */
@RestController
@RequestMapping("topicList")
public class TopicListController {

    @Resource
    private TopicListService topicListService;

    /**
     * 分页查询所有话题数据
     *
     * @param page      分页对象
     * @param topicList 查询实体
     */
    @GetMapping
    public R selectAll(Page<TopicList> page, TopicList topicList){
        return success(topicListService.page(page, new QueryWrapper<>(topicList)));
    }
}
