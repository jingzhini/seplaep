package com.jin.seplaep.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 *
 * @TableName user
 */
@TableName(value ="user")
@Data
public class    User implements Serializable {


    /**
     * 主键
     */
    @TableId(value = "id")
    private Integer id;

    /**
     * 姓名
     */
    @TableField(value = "name")
    private String name;

    /**
     * 昵称
     */
    @TableField(value = "nick_name")
    private String nick_name;

    /**
     * 手机号
     */
    @TableField(value = "phone")
    private String phone;

    /**
     * 密码
     */
    @TableField(value = "password")
    private String password;

    /**
     * 性别
     */
    @TableField(value = "sex")
    private Integer sex;

    /**
     * 身份证号
     */
    @TableField(value = "id_number")
    private String id_number;

    /**
     * 头像
     */
    @TableField(value = "avatar")
    private String avatar;

    /**
     * 状态（0：禁用；1：正常）
     */
    @TableField(value = "status")
    private Integer status;

    /**
     * 创建用户时间
     */
    @TableField(value = "creat_time")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime creat_time;

    /**
     * 修改用户时间
     */
    @TableField(value = "update_time")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime update_time;

    /**
     * 角色
     */
    @TableField(value = "role")
    private String role;

    /**
     * 删除（0：正常；1：删除）
     */
    @TableField(value = "delete_status")
    private Integer delete_status;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
