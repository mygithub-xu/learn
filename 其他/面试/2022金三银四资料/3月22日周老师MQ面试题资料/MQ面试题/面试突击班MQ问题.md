# 面试突击班：MQ

## 今天上课的是周老师

什么是mq？

你为什么用mq？

为什么用mq？

为什么不用ooxx？

可靠性怎么保证？

重复消息？

丢失消息？



---

## 目标：架构能力

### MQ：边界(queue)

【解耦、异步、消峰】：发送文件(很大的东西)

message-size：kafka：1M，rocketmq：4M，rabbitmq：2G，512M

queue：FIFO，del，offset



producer：投递可靠性

consumer：消费可靠性

broker：

partition：

topic：



amqp

exchange:direct,fanout,topic,headrs

queue:

binding:ex+queue

routingkey:ex+(routingkey)+queue

问题：dirct可不可以一个routingkey通过dirctEX发送给多个queue



延迟

过期

重试

死信

幂等

重复

可靠

有序

消息大小

发送机制






