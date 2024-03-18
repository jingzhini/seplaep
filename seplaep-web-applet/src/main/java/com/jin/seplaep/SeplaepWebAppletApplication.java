package com.jin.seplaep;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/**
 * @Author jin
 * @Date 2024/03/19 周二 0:43
 * @Description 微信小程序客户服务端，启动类入口；
 */
@SpringBootApplication
@MapperScan("com.jin.seplaep.mapper") //mapper层的包
@Slf4j
public class SeplaepWebAppletApplication {

    public static void main(String[] args) {
        SpringApplication.run(SeplaepWebAppletApplication.class, args);
        log.info("微信小程序客户服务端，项目启动成功！！！");
    }

}
