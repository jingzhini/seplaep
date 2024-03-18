package com.jin.seplaep;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @Author jin
 * @Date 2024/01/17 周三 17:22
 * @Description web后台管理服务端，启动类入口；
 *
 */
@SpringBootApplication //主类
@EnableTransactionManagement //开启对事物管理的支持
@MapperScan("com.jin.seplaep.mapper") //mapper层的包
@Slf4j
public class SeplaepWebManageApplication {

    public static void main(String[] args) {
        SpringApplication.run(SeplaepWebManageApplication.class, args);
        log.info("web后台管理服务端，项目启动成功！！！");
    }

}
