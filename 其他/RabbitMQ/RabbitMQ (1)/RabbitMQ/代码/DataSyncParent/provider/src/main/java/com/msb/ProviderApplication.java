package com.msb;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by 金喆
 */

@SpringBootApplication
@EnableDubbo
@MapperScan("com.msb.mapper")
public class ProviderApplication {

    public static void main(String[] args) {

        SpringApplication.run(ProviderApplication.class ,args);
    }
}
