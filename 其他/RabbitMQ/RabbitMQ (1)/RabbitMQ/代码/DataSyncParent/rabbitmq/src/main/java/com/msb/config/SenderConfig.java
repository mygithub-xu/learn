package com.msb.config;

import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by 金喆
 */

@Configuration
public class SenderConfig {

    @Bean
    protected Queue queue()
    {
        return new Queue("demoqueue");
    }


}
