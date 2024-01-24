package com.jin.seplaep.utils;

import lombok.Data;

import java.io.Serializable;

@Data
public class R implements Serializable {


    private Integer code; //编码：1成功，0和其它数字为失败
    private String msg; //错误信息
    private Object data; //数据

    //成功结果
    public static R success(Object object) {
        R resultInfo = new R();
        resultInfo.data = object;
        resultInfo.msg = "执行成功！";
        resultInfo.code = 200;
        return resultInfo;
    }

    //失败结果,自定义返回结果：
    public static R error(String msg,int code) {
        R resultInfo = new R();
        resultInfo.msg = msg;
        resultInfo.code = code;
        return resultInfo;
    }

    //使用状态码枚举类，返回固定结果：
    public static R error(RCode rcode) {
        R resultInfo = new R();
        resultInfo.msg = rcode.getCnMessage();
        resultInfo.code = rcode.getCode();
        return resultInfo;
    }

}
