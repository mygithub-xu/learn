package com.msb.receive;

import com.rabbitmq.client.Channel;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * Created by 金喆
 */


@Component
public class DemoReceive {

    @RabbitListener(queues = "myQueue")
    public void demo(String msg)
    {
        System.out.println("获取到的消息1111： " + msg);
    }

    @RabbitListener(queues = "myQueue")
    public void demo2(String msg)
    {
        System.out.println("获取到的消息2222： " + msg);
    }

    @RabbitListener(queues = "myfanout1")
    public void demo3(String msg)
    {
        System.out.println("fanout1: " + msg);
    }

    @RabbitListener(queues = "myfanout2")
    public void demo4(String msg)
    {
        System.out.println("fanout2: " + msg);
    }

    @RabbitListener(queues = "topic1")
    public void demo5(String msg)
    {
        System.out.println("topic1： "+msg);
    }


    @RabbitListener(queues = "topic2")
    public void demo6(String msg)
    {
        System.out.println("topic2： "+msg);
    }


    @RabbitListener(queues = "topic2")
    public void demo66(String msg)
    {
        System.out.println("topic2 66： "+msg);
    }


    volatile int count = 0;
    @RabbitListener(queues = "topic3")
    public void demo7(String msg, Channel channel, Message message) throws IOException {
        System.out.println("队列的消息为：" + msg);
        long deliveryTag = message.getMessageProperties().getDeliveryTag();
        try {
            // 业务代码
            int aa = 1/0;
            // 手动ack
            channel.basicAck(message.getMessageProperties().getDeliveryTag(),false);
        }catch (Exception e){
            // count的值使用redis将唯一值作为key存储，使用
            if (count < 3){
                // 消费失败 第一个false为
                channel.basicNack(deliveryTag,false,true);
                count++;
            }else {
                System.out.println("重试已达最大次数，存入数据库，手动消费");
            }

        }

    }
}
