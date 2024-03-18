package com.jin.seplaep.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * 话题列表
 * @TableName topic_list
 */
@TableName(value ="topic_list")
@Data
public class TopicList implements Serializable {
    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 话题封面
     */
    @TableField(value = "img")
    private String img;

    /**
     * 话题简述
     */
    @TableField(value = "sketch")
    private String sketch;

    /**
     * 创建时间
     */
    @TableField(value = "create_time")
    private LocalDateTime create_time;

    /**
     * 更新时间
     */
    @TableField(value = "update_time")
    private LocalDateTime update_time;

    /**
     * 是否删除(0-未删, 1-已删)
     */
    @TableField(value = "is_deleted")
    private Integer is_deleted;

    /**
     * 标题
     */
    @TableField(value = "title")
    private String title;

    /**
     * 热度数
     */
    @TableField(value = "totalNum")
    private Integer totalNum;

    /**
     * 今日热度数
     */
    @TableField(value = "todayNum")
    private Integer todayNum;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
