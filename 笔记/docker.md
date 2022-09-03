## docker

##### 什么是docker

docker是一个应用容器引擎。每一个容器就相当于一个轻量级虚拟机

##### docker镜像

docker镜像为docker容器的源代码，用于创建容器

##### docker容器

一个操作系统的独立进程

##### docker命令（常用）

- docker run ：创建新的容器并运行

  -a 指定输入输出的内容类型（[STDIN](https://so.csdn.net/so/search?q=STDIN&spm=1001.2101.3001.7020)/STDOUT/STDERR ）

  -d 后台运行容器，并返回id（docker run --name mysql  -d mysql:5.7）

  -e 设置环境变量 （ -e MYSQL_ROOT_PASSWORD=root）

  -i 以交互模式运行容器 （数据备份）

  -m 设置容器内存最大值

  -p 端口映射

  -v 绑定卷 （-v /mydata/myql/data:/etc/mysql/data）

  -net 容器间网络连接类型（网桥）

- docker kill ：杀死运行中的容器

- docker rm：删除一个或多个容器

  -f 强制删除

  -i 移除容器间的网络连接

  -v 删除卷

- docker exec ：在运行的容器中执行命令（docker exec -it 容器id bash）

- docker create：创建容器但不启用

- docker pause：暂停容器所有进程

- docker start：启动一个或多个容器

- docker stop：停止一个运行中的容器

- docker restart：重启容器

- docker ps

   -a  显示所有的容器，包括未运行的。

   -n 列出最近创建的n个容器

   -s 显示总文件大小

- docker inspect ：获取容器/镜像的元数据

- docker events ：从服务器获取实时事件

- docker logs ：获取容器日志

- docker commit：从容器创建一个新的镜像

- docker cp ：用于容器与主机之间的数据拷贝

- docker login ：登录镜像仓库

- docker logout：登出

- docker pull ：拉取

- docker push ：将本地镜像上传到仓库

- docker search：查找镜像

- docker images： 列出镜像

- docker rmi：删除镜像

- docker build：用于dockerfile创建镜像

  -f   指定路径

  -m  内存值

  -tag 标签

- docker history：镜像创建历史

- docker save：将镜像保存为tar 

  -o 输出到文件

- docker load ：导入使用docker save导出的镜像

  -i 指定导入文件

- docker version ：显示docker版本

- docker info： docker信息



创建网桥

docker network create --subnet 192.169.0.0/16 --gateway 192.169.0.1 redis-net

查看网桥

sudo docker network ls

移除所有无用镜像

docker image prune -a

##### docker（docker-compose）下载 

```
echo "-------------start------------"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum -y install docker-ce

sudo service docker start
# docker-install/docker-compose为dokcer-compose文件下载位置
sudo cp ./docker-install/docker-compose /usr/local/bin/
sudo chmod +x /usr/local/bin/docker-compose
echo "-------------end------------"
```

##### dockerFile（镜像描述文件）

由于部署的复杂度，我们需要将我们需要部署的项目做成一个镜像。dockerFile就是为我们快速构建镜像的一个文件。

```
FROM openjdk:8u222-jre
作者
MAINTAINER xu
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp 
# 将jar包添加到容器中并更名为app.jar
ADD ./docker/app.jar app.jar
# 运行jar包
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
```

##### docker-compose

当出现很多容器时，我们需要对其进行配置或者批量启动，停止。一系列命令很麻烦。于是，为了方便就出现了docker-compose

如：

```
version: '3.3'
services:
  mysql:
    build: ./docker-base/mysql/
      #context: ./
      #dockerfile: ./docker-base/mysql/mysql-Dockerfile
    ports:
      - 33307:3306
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_USER: wym
      MYSQL_PASSWORD: 123456
  redis:
    image: 'redis:5.0.0'
    container_name: project-redis
    restart: always
    command: redis-server --requirepass hehe
    ports:
      - "6379:6379"
```



数据库备份demo

```
// 查看容器mysql时间
docker exec -i mysql  /bin/bash -c date
// 宿主机和mysql时间同步
docker cp /etc/localtime mysql:/etc/localtime
// 创建备份脚本
vim docker_mysqlbackup.sh
--------内容开始------------
docker exec -i mysql bash<<'EOF'
if [ ! -d "/backups/mysql" ]; then
  mkdir -p /backups/mysql
fi
mysqldump -uroot -proot demo > /backups/mysql/demo_$(date +%Y%m%d).sql
rm -f /backups/mysql/demo_$(date -d -10day +%Y%m%d).sql
exit
EOF
if [ ! -d "/backups/mysql" ]; then
  mkdir -p /backups/mysql
fi
docker cp mysql:/backups/mysql/demo_$(date +%Y%m%d).sql /backups/mysql
rm -f /backups/mysql/demo_$(date -d -10day +%Y%m%d).sql
--------内容结束------------
// 授权
chmod +x docker_mysqlbackup.sh
// 下载定时
yum -y install vixie-cron crontabs
// 开机自启
systemctl enable crond&&systemctl start crond
//定时任务输入
crontab -e
// 输入内容如下
1 0 * * * sh /docker_mysqlbackup.sh
// 查看
ls /backups/mysql

```



mysql主从复制demo：

