## AMQP

高级消息队列协议：是进程之间传递异步消息的网络协议

##### AMQP的工作过程

发布者(Publisher)发布消息(Message),经过交换机(Exchange)，交换机根据路由规则将收到消息分发给交换机绑定的队列(Queue)，最后AMQP代理会将消息投递给订阅了此队列的消费者，或者消费者按照需求自行获取。

![RabbitMQ-01.jpg](https://upload-images.jianshu.io/upload_images/19104987-19b46f8c7ca57340.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 消息队列

### 什么是消息队列（mq）

消息队列就是一个队列结构的中间件。主要是分布式之间实现异步通信的方式。

### 为什么需要消息队列&消息队列有哪些作用

*   解耦：当a系统通过接口调用方式，发送数据给多个系统，那么当增加一个需要数据的z系统时，a就会增加一条给z发送数据代码。这样，耦合度非常高。所以使用消息队列，，我们只需要让z系统监听消息即可

*   异步：当a系统发送一条命令给b系统执行，而a不需要接收返回值时。我们需等待a执行完，程序才能执行下去，这样很浪费性能。所以，我们使用mq

*   削峰：当并发数过高时，系统无法承载。这样就先将请求数据缓存在mq队列，然后根据消费端能力进行消费

### 消息队列缺点

系统稳定性，可用性降低降低。系统复杂性提高

## RabbitMQ

### **RabbitMQ适用场景**

*   排队算法

*   秒杀活动

*   消息分发

*   异步处理

*   数据同步

*   处理耗时任务

*   流量销峰

### RabbitMQ几大组件

*   Message（消息）。消息是不具名的，它由消息头消息体组成。消息体是不透明的，而消息头则由一系列可选属性组成，这些属性包括：routing-key(路由键)、priority(相对于其他消息的优先权)、delivery-mode(指出消息可能持久性存储)等。
*   exchange（交换机）：交换器。用来接收生产者发送的消息并将这些消息路由给服务器中的队列。三种常用的交换器类型1\. direct(发布与订阅 完全匹配)2\. fanout(广播)3\. topic(主题，规则匹配)
*   Queue（队列）：消息队列。用来保存消息直到发送给消费者。它是消息的容器，也是消息的终点。一个消息可投入一个或多个队列。消息一直在队列里面，等待消费者链接到这个队列将其取走
*   Binding（绑定）：绑定。用于消息队列和交换器之间的关联。一个绑定就是基于路由键将交换器和消息队列连接起来的路由规则，所以可以将交换器理解成一个由绑定构成的路由表。
*   Channel（信道）：信道。1，Channel中文叫做信道，是TCP里面的虚拟链接。例如：电缆相当于TCP，信道是一个独立光纤束，一条TCP连接上创建多条信道是没有问题的。2，TCP一旦打开，就会创建AMQP信道。3，无论是发布消息、接收消息、订阅队列，这些动作都是通过信道完成的。

### rabbitMQ的原理

1. 交换机与队列进行绑定，一个交换机可以绑定多个队列。
2. 消费者将消息发送给对应名称和类型的交换机（direct：要完全匹配的名称。fanout：广播都可以消费）
3. 交换机将消息发送给队列

注意：生产者和交换机。消费者和队列。。。这些连接是通过tcp连接，创建一多个虚拟信道来进行信息传输。



![微信图片_20220713155524](C:\Users\whfch\Desktop\微信图片_20220713155524.png)



### rabbitMQ安装

```
// 创建并启动mq
docker run -d --name myrabbit1 -p 15672:15672 -p 5672:5672 -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin rabbitmq
// 进入容器
docker exec -it 容器id bash
// 开启可视化插件
rabbitmq-plugins enable rabbitmq_management
// rabbitmq配置文件
cd /etc/rabbitmq/conf.d/ 
// 配置可以查看交换机
echo management_agent.disable_metrics_collector = false > management_agent.disable_metrics_collector.conf
exit
// 重启容器
docker restart [containerId] 
```



### rabbitMQ的五种常用工作模式

##### 简单模式：使用默认交换机（direct）

p（生产者）--q（队列）--c（1个消费者）

代码与direct交换机一样



##### work模式：使用默认交换机

p（生产者）--q（队列）--c（多个消费者），当有多个消费者是，会只能有一个消费者拿到消息

发布订阅模式：fanout交换机

代码与direct交换机一样



##### 路由模式：direct（直连）交换机

p（生产者）--x（direct交换机）--q（多个队列）--c（多个消费者），当消费者发送消息时，会通过交换机发送给指定的队列，，然后消费者按照对应的队列去进行消费。

```
 1.创建队列
@Configuration
public class RabbitmqConfig {

    @Bean
    protected Queue quene()
    {
        Queue queue = new Queue("myQueue");
        return queue;
    }
}

 2.新建类发送消息
@Autowired
private AmqpTemplate amqpTemplate;
// 生产者发送：
amqpTemplate.convertAndSend("myQueue" , "这是发送的内容");

3.消费者接收：
@RabbitListener(queues = "myQueue")
public void demo(String msg)
{
System.out.println("获取到的消息1111： " + msg);
}
```



##### 发布订阅模式：fanout（扇形）交换机

p（生产者）--x（fanout交换机）--q（多个队列）--c（多个消费者），当消费者发送消息时，会通过交换机发送给全部的队列，，然后消费者按照对应的队列去进行消费。

```
1.创建：
// 创建队列myfanout
@Bean
protected Queue fanoutQuque(){
    return new Queue("fanout");
}
// 创建交换机amq.fanout
@Bean
protected FanoutExchange fanoutExchange(){
    return new FanoutExchange("amq.fanout");
}
// 绑定队列和交换机
@Bean
protected Binding fanoutBinding(Queue fanoutQuque,FanoutExchange fanoutExchange){
    return BindingBuilder.bind(fanoutQuque).to(fanoutExchange);
}


2.发送：参数1：交换机 参数二：routingKey 参数3：消息
amqpTemplate.convertAndSend("amq.fanout" , "abcd" , "fanout msg");

3.接收
@RabbitListener(queues = "myfanout")
public void demo(String msg)
{
System.out.println("fanout1: " + msg);
}

```

**注意：参数二的routingKey对fanout类型交换机没有意义**



##### 主题模式：topic交换机

```
1.创建：
@Bean
protected Queue topicQueue() {
    return new Queue("topic");
}
@Bean
protected TopicExchange topicExchange() {
    return new TopicExchange("amq.topic");
}
@Bean
protected Binding topicBinding(Queue topicQueue, TopicExchange topicExchange) {
    return BindingBuilder.bind(topicQueue).to(topicExchange).with("abcd");
}

2.发送：参数1：交换机 参数二：routingKey 参数3：消息
amqpTemplate.convertAndSend("amq.fanout" , "abcd" , "fanout msg");

3.接收
@RabbitListener(queues = "myfanout")
public void demo(String msg)
{
System.out.println("fanout1: " + msg);
}

符号“#”表示匹配一个或多个词，符号“*”表示匹配一个词。
```

**注意：topic交换机根据routingKey不同，选择不同的队列**



**以上是几种交换机模式的代码,值得注意的是：当传递消息为对象时，必须给对象实体进行序列化，且需要给定序列化值。**

<!--序列化：网络传输数据是用byte传输，当没有指定的序列化值时，jvm会自定义一个序列化值，然后进行反序列化。但是官方强烈要求需要写这个值。避免风险我们在创建实体类的时候还是得写一下-->



### 如何保证rabbitMQ的消息不被重复消费（幂等）

重复消费产生：因为网络波动原因，可能会产生生产者和消费者都出现消息的重复发送和接收

1.插入数据时判断数据库是否存在该数据，或者基于唯一主键（适用于并发不是很高，且存在数据不可重复。）

2.记录关键的key（生产者生成），存于缓存。从而判断是否被重复消费（并发较高）

代码：

```
    
	// 绑定队列topic3
	@Bean
    public Queue topicQueue3()
    {
        return new Queue("topic3");

    }
    
    @Bean
    public Binding topicBinding3(Queue topicQueue3 , TopicExchange topicExchange)
    {
        return BindingBuilder.bind(topicQueue3).to(topicExchange).with("abc");
    }
	

	// 发送
    public void publishWithProps(){
        amqpTemplate.convertAndSend("amq.topic","abc", "messageWithProps", new MessagePostProcessor() {
            @Override
            public Message postProcessMessage(Message message) throws AmqpException {
                message.getMessageProperties().setCorrelationId("123");
                return message;
            }
        });
        System.out.println("消息发送成功");
    }

	// 接收
    @RabbitListener(queues = "topic3")
    public void demo7(String msg, Channel channel, Message message) throws IOException {
        System.out.println("队列的消息为：" + msg);
        String correlationId = message.getMessageProperties().getCorrelationId();
        System.out.println("唯一标识为：" + correlationId);
        // 使用redis的setnx存入缓存
        // 如果结果为0则之前没有被消费，否则被消费了
        // 业务
        
    }
```



### 如何保证rabbitMQ的消息可靠性传输（消息不丢失）

1.生产者到交换机消息丢失

- 生产者到交换机 丢失消息 ：使用setConfirmCallback回调方法来确定是否发送成功

```
// 生产者到交换机消息丢失
rabbitTemplate.setConfirmCallback(new RabbitTemplate.ConfirmCallback() {
    @Override
    public void confirm(CorrelationData correlationData, boolean ack, String cause) {
        if(ack){
            System.out.println("消息已经送达到交换机！！");
        }else{
            System.out.println("消息没有送达到Exchange，需要做一些补偿操作！！如重试7次，如果还是不行，则记录下来");
        }
    }
});
```

- mq 丢失消息 ：使用setReturnsCallback确定是否进入队列，并且将交换机和队列都持久化

```
// 交换机到队列消息消息丢失
rabbitTemplate.setReturnsCallback(new RabbitTemplate.ReturnsCallback() {
    @Override
    public void returnedMessage(ReturnedMessage returned) {
        // 消息发送失败 进入此方法，否则不仅进入
        String msg = new String(returned.getMessage().getBody());
        System.out.println("消息：" + msg + "路由队列失败！！做补救操作！！");
    }
});

// 另外需开启持久化机制来存储消息，防止消息在mq丢失
        rabbitTemplate.convertAndSend("amq.topic","abc", "checkMessageSendExchangeaaaaaa", new MessagePostProcessor() {
            @Override
            public Message postProcessMessage(Message message) throws AmqpException {
                message.getMessageProperties().setDeliveryMode(MessageDeliveryMode.PERSISTENT);
                return message;
            }
        });
        
```



- 消费者丢失消息：1.使用basicNack使消息重新发送（如下代码）2.直接记录，手动消费

```
// 当使用basicNack时，消息会重复发送给消费者（慎用，容易死循环）。
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
```

### 

### 如何保证rabbitMQ的消息顺序性

- 可以一个队列对应一个消费者。然后创建多个队列及相应消费者
- 可以将信息保留在redis的队列中，，然后允许一个服务进行排序消费。

### rabbitMQ消息积压

- 可以将消费者服务进行集群化（但是存在消息顺序性问题）
- 修改消费者代码，进行批量获取消息（比如直接拿到消息进一个队列后，就发送消息ack信息。批量拉取消息）然后进行多线程批量消费。
- 用docker或者k8s进行动态扩容。用更多的消费者进行消费
- 死信队列

### 死信队列

死信就是队列附带的一个交换机。当消息出现以下情况，消息就会被发路由到死信交换机，并由交换机发送到死信队列，发送至客户端。

- 消息被消费者拒绝
- 消息的生存时间到了（或者队列所设置的生存时间到了）且未被消费
- 队列的消息到最大长度（一般来说消息满了就会挤掉前面的消息。配置了死信就会进入死信队列）



### Rabbit集群

```
#在两个服务器创建两个rabbit
version: '3.1'
services:
  rabbitmq1:
    image: rabbitmq:3.8.5-management-alpine
    container_name: rabbitmq1
    hostname: rabbitmq1
    extra_hosts:
      - "rabbitmq1:192.168.11.32"
      - "rabbitmq2:192.168.11.33"
    environment: 
      - RABBITMQ_ERLANG_COOKIE=SDJHFGDFFS
    ports:
      - 5672:5672
      - 15672:15672
      - 4369:4369
      - 25672:25672
      
      
version: '3.1'
services:
  rabbitmq2:
    image: rabbitmq:3.8.5-management-alpine
    container_name: rabbitmq2
    hostname: rabbitmq2
    extra_hosts:
      - "rabbitmq1:192.168.11.32"
      - "rabbitmq2:192.168.11.33"
    environment: 
      - RABBITMQ_ERLANG_COOKIE=SDJHFGDFFS
    ports:
      - 5672:5672
      - 15672:15672
      - 4369:4369
      - 25672:25672

```

启动之后需将其互相加入

首先rabbitmq1容器内执行：

```
rabbitmqctl start_app
```

然后rabbitmq2容器内执行

```
rabbitmqctl stop_app
rabbitmqctl reset 
rabbitmqctl join_cluster rabbit@rabbitmq1
rabbitmqctl start_app
```

最后需要设置镜像模式

![image-20220728223801059](C:\Users\whfch\AppData\Roaming\Typora\typora-user-images\image-20220728223801059.png)

### Rabbit主从复制



