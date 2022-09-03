package com.msb;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
/**
 * Created by 金喆
 */


@SpringBootTest(classes = PublisherApplication.class)
@RunWith(SpringJUnit4ClassRunner.class)
public class MyTest {


    @Autowired
    public RabbitTemplate rabbitTemplate;


//    @Test
//    public void testMethod()
//    {
//        rabbitTemplate.convertAndSend("myQueue" , "这是发送的内容");
//
//        System.out.println("发送成功！");
//    }

//   // @Test
//    public void testMethod2()
//    {
//        rabbitTemplate.convertAndSend("amq.fanout" , "core" , "fanout msg");
//
//        System.out.println("发送成功！");
//    }


    @Test
    public void testMethod3()
    {
        rabbitTemplate.convertAndSend("amq.topic" , "com.msb.a.b" , "topic msg");

        System.out.println("发送成功！");
    }


    /*
     * MessagePostProcessor中消息配置setCorrelationId来存储唯一id，该id可以保存商品id等来实现消息幂等
     */
//    @Test
//    public void publishWithProps(){
//        rabbitTemplate.convertAndSend("amq.topic","abc", "messageWithProps", new MessagePostProcessor() {
//            @Override
//            public Message postProcessMessage(Message message) throws AmqpException {
//                message.getMessageProperties().setCorrelationId("123");
//                return message;
//            }
//        });
//        System.out.println("消息发送成功");
//    }

    /*
     * 保证消息发送至交换机
     */
//    @Test
//    public void checkMessageSendExchange(){
//        // 生产者到交换机消息丢失
//        rabbitTemplate.setConfirmCallback(new RabbitTemplate.ConfirmCallback() {
//            @Override
//            public void confirm(CorrelationData correlationData, boolean ack, String cause) {
//                if(ack){
//                    System.out.println("消息已经送达到交换机！！");
//                }else{
//                    System.out.println("消息没有送达到Exchange，需要做一些补偿操作！！如重试7次，如果还是不行，则记录下来");
//                }
//            }
//        });
//
//
//        // 交换机到队列消息消息丢失
//        rabbitTemplate.setReturnsCallback(new RabbitTemplate.ReturnsCallback() {
//            @Override
//            public void returnedMessage(ReturnedMessage returned) {
//                // 消息发送失败 进入此方法，否则不仅进入
//                String msg = new String(returned.getMessage().getBody());
//                System.out.println("消息：" + msg + "路由队列失败！！做补救操作！！");
//            }
//        });
//
//        // 无论是交换机还是队列丢失消息，都需要将其持久化
//        rabbitTemplate.convertAndSend("amq.topic","abc", "checkMessageSendExchangeaaaaaa", new MessagePostProcessor() {
//            @Override
//            public Message postProcessMessage(Message message) throws AmqpException {
//                message.getMessageProperties().setDeliveryMode(MessageDeliveryMode.PERSISTENT);
//                return message;
//            }
//        });
//        System.out.println("执行");
//    }

//    @Test
//    public void testMaxLength(){
//        rabbitTemplate.convertAndSend("amq.topic","abc", "4444");
//    }

}
