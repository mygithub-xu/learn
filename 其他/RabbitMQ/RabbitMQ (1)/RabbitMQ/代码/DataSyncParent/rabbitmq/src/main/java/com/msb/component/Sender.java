package com.msb.component;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by 金喆
 */

@Component
public class Sender {

    @Autowired
    private AmqpTemplate amqpTemplate;

    public void send(Object obj)
    {
        amqpTemplate.convertAndSend("demoqueue" , obj);

    }

}
