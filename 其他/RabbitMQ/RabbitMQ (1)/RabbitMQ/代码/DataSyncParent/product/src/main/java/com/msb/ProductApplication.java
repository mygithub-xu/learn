package com.msb;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by 金喆
 */

@SpringBootApplication
@EnableDubbo
public class ProductApplication {

    public static void main(String[] args) {

        SpringApplication.run(ProductApplication.class ,args);
    }



}
