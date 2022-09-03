## 准备

##### 1.寻址

磁盘寻址是毫秒级别

内存寻址是纳秒级别

所以内存比磁盘快。所以redis比mysql快

其次，磁盘是有带宽限制读的。



##### 2.I/O

i/o就是在读取数据。然后任何IO过程中都包含**两个步䠫**：第一是等待；第二是拷贝

磁盘有磁道和扇区，一扇区512字节，扇区小会导致索引成本变大。所以操作系统读取磁盘时，无论读多少都是最少4k从磁盘读取。
随着文件变大，读取速度由于硬盘I/O的限制会导致读取速度变慢。

问：

数据库表数据很大，增删改都会变慢。那么查询会变慢吗？

答：当个别查询时，不会受影响。但是当并发时，会受带宽的影响。因为当打满了带宽，每一个查询都会等待前面的查询完



##### **3.五种I/O模型**

（这里只记三种）

- BIO（blocking I/O：同步阻塞i0）：发送读取请求，内核准备，拷贝，返回数据。如果数据未准成功，则一直等待。（优点：只适用于数据小，并发低。缺点：非常耗时，时间利用率低）。（打王者等人，等到人就开始游戏）
- NIO（noblocking I/O：同步非阻塞i0）:发送读取请求，内核准备，拷贝，返回数据。如果数据未准备好，进程就会去做别的事情，然后轮询去查看数据是否准备好。（优点：提高了时间利用率。缺点：轮询对cpu来说是巨大的浪费，占用大量cpu的时间片）（打王者等人，如果没等到，则切屏去看抖音。期间去轮询问是否准备好，等到确认准备好，那么就开始游戏）
- I/O multiplexing（多路复用io）：将多个读取请求注册在同一管道上。管道与内核交互，当管道种的某一个请求的数据准备好后，就将数据拷贝到用户空间。（原理：将多个进程注册到select或者epoll上，然后select会调用进程阻塞，当任意一个io准备好数据后，就返回）（就是多准备几个手机打王者，然后等不同的几个人，，当有一个人准备好了，那么就开始游戏）

##### 4.select和epoll的区别

epoll和select都是多路复用下的一种机制，多路复用I/O就是通过一种机制，可以监视多个文件描述符，一旦某个文件描述符就绪，就通知程序该文件描述符可以进行读写操作。

select：每次将fd集合（请求集合）拷贝到内核，然后遍历fd调用对应的poll方法，返回可读写的演示码来判断是否资源就绪。

epoll：epoll也需要拷贝fd，但是在整个过程中只会拷贝一次。等等。。。。

## 基础

##### redis介绍

redis是key-value数据库。

##### redis特性（为什么那么快）

- 完全基于内存
- 数据结构简单：string,list,set,zset,hash
- redis是单线程的，避免了多请求的切换，不用考虑锁对性能的消耗。
- 使用了多路复用的io机制（相比于普通的io机制，多路复用更快速）
- C语言实现

##### redis是单线程吗

redis在读写的时候是单线程，但是在其他功能，比如持久化机制，异步删除，集群的数据同步，这些都是额外的线程执行

##### redis的数据类型

代码实例：

- String：二进制安全。可以包含任何数据，字符，数字。一个键可存512m。应用场景：常规计数，点赞数，分布式锁。
- hash：键值对。存储对象，直接可以拿到对象属性。应用场景：存储用户数据。
- list：链表。顺序，存储。应用场景：消息队列，文章列表
- set：哈希表实现，不重复，不顺序。应用场景：共同好友，利用唯一性做到访问网站的独立ip
- sortSet：在set中加入一个权重参数score，score有序排列。应用场景：排行榜，带权重的消息队列
![redis-hash.png](https://upload-images.jianshu.io/upload_images/19104987-a4f5498ab588cd51.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![redis-list.png](https://upload-images.jianshu.io/upload_images/19104987-be97db87acd58e63.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![redis-set.png](https://upload-images.jianshu.io/upload_images/19104987-d6a3433cc9fff465.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![redis-string.png](https://upload-images.jianshu.io/upload_images/19104987-b9df6bdd65bb5c81.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![redis-zset.png](https://upload-images.jianshu.io/upload_images/19104987-13d36c0a2c2c11c7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

##### redis的消息发布订阅
![redis-publish.png](https://upload-images.jianshu.io/upload_images/19104987-4e2770717eaafb2e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


##### 什么是缓存穿透

是针对数据库和缓存中都没有的数据。有些恶意的key不命中缓存直接打到数据库，数据库也没有这样的数据。然后就被大量的这种key进行攻击。

避免：1.缓存那些返回值为空的key。2.过滤那些一定不正确的key（布隆过滤器）

##### 什么是缓存击穿

针对缓存中没有但数据库有的数据。当热点数据key失效后，瞬间涌入大量的请求来请求同一个key。然后没来得及缓存，导致数据库压力过大。

避免：1.设置热点数据永不过期。2.缓存预热

##### 什么是缓存雪崩

针对缓存中没有但数据库有的数据。短时间，大量的key过期，导致请求全部打在了数据库上。

避免：1.设置缓存时间分散。

##### redis的缓存失效策略

- 惰性删除：当发现命中的key失效时就删除
- 定期删除：每隔一段时间就随机抽取一批key，如果失效就删除

##### redis的持久化机制

- aof：aof是将每一条（写删）指令都记录，然后宕机后恢复
- rdb：是每隔一段时间就将数据快照。过程（bgsave）：fork一个子进程，先将数据写入临时文件，然后替换之前的文件，用二进制压缩存储。整个过程中主进程不进行任何io操作

##### aof和rdb的优缺点

rdb：适合大规模数据恢复，但是对数据的完整性不高。在一定间隔做一次备份，那么就会丢失最后一次快照更改数据。但性能比较好

aof：性能较差但是数据完整性比较好

##### redis的混合持久化机制

混合持久化机制。

rdb会丢失最后一次数据，aof备份全部操作命令的文件又太大。那么，当宕机时，先执行rdb，再rof上一次rdb到宕机时的数据，那么就可以完整的利用两者的优点。

##### redis，mysql如何保证双写一致性

一般使用延迟双删。写数据时，先删除redis，然后更新数据库，再延迟删除redis

- 第二次删除延迟是因为，更新数据库需要时间，不延迟，可能数据库没更新就已经执行删除操作了
- 第二次删除，可能会有请求在第一次删和更新数据库中间发生，所以保证数据的统一需要进行二次删除



##### redis的使用场景

- 缓存
- 队列：对list进行pop和push操作就可以模拟出队列
- 排行榜、计数器：
- 发布订阅（可以做到聊天）
- 分布式锁

## redis集群

##### redis的主从复制

解决问题：主从复制的出现是因为，一台redis满足不了大量的读写请求。

如何解决：读写分离，将读操作集中在从服务器上，写操作在主服务器上。(由于结构原因，从无法进行写操作)

命令：

```
docker network create --subnet 192.169.0.0/16 --gateway 192.169.0.1 redis-net

docker pull reids

docker run -itd --name redis-master -p 6379:6379 --net redis-net --ip 192.169.0.2 redis

docker run -itd --name redis-slave1 -p 6380:6379 --net redis-net --ip 192.169.0.3 redis redis-server --slaveof 192.169.0.2 6379

docker run -itd --name redis-slave2 -p 6381:6379 --net redis-net --ip 192.169.0.4 redis redis-server --slaveof 192.169.0.2 6379

docker exec -it redis-master redis-cli info replication

docker exec -it redis-master redis-cli

docker exec -it redis-slave1 redis-cli

docker run -itd --name redis-master -v /redis/redis-master.conf:/usr/local/etc/redis/redis.conf -p 6379:6379 --net redis-net --ip 192.169.0.2 redis redis-server /usr/local/etc/redis/redis.conf

docker run -itd --name redis-slave1 -v /redis/redis-slave.conf:/usr/local/etc/redis/redis.conf -p 6381:6379 --net redis-net --ip 192.169.0.3 redis redis-server /usr/local/etc/redis/redis.conf
```

##### redis哨兵模式及故障转移

解决问题：当master（主服务器）挂了。redis就无法使用了。

如何解决：首先哨兵模式，将监控你的master节点，当其判断主节点挂了，那么就会从投票选举出一个从节点来作为主节点。

哨兵模式的基本原理：当判断主节点下线的哨兵达到一半以上，那么就会判断master挂了。索引哨兵一定要大于三个及以上。每个哨兵维护了3个定时任务（1.确定主从关系，发送info命令获取最新的主从结构。2.发布订阅获取其他哨兵的状态。3.其他节点发送ping命令进行心跳检测，判断其是否下线）。

故障转移原理：1.过滤不健康从节点。  2.选择复制偏移量最大的从节点。

命令：
##### redis cluster高可用



##### redis如何进行性能优化

