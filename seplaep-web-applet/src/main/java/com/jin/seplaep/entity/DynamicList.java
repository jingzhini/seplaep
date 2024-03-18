package com.jin.seplaep.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.Data;

/**
 * 动态列表
 * @TableName dynamic_list
 */
@TableName(value ="dynamic_list")
@Data
public class DynamicList implements Serializable {
    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 头像路由
     */
    @TableField(value = "userPic")
    private String userPic;

    /**
     * 用户名
     */
    @TableField(value = "username")
    private String username;

    /**
     * 性别
     */
    @TableField(value = "sex")
    private Integer sex;

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
     * 年龄
     */
    @TableField(value = "age")
    private Integer age;

    /**
     * 标题
     */
    @TableField(value = "title")
    private String title;

    /**
     * 动态类型
     */
    @TableField(value = "type")
    private String type;

    /**
     * 播放数
     */
    @TableField(value = "playNum")
    private String playNum;

    /**
     * 播放时长
     */
    @TableField(value = "playLong")
    private String playLong;

    /**
     * 动态封面图片地址
     */
    @TableField(value = "coverPic")
    private String coverPic;

    /**
     * 评论数
     */
    @TableField(value = "commentNum")
    private Integer commentNum;

    /**
     * 分享数
     */
    @TableField(value = "shareNum")
    private Integer shareNum;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
