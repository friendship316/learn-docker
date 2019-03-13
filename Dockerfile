#docker仓库的JDK镜像
FROM java:8
#挂载点，即容器中/tmp(这个目录是springboot内嵌的Tomcat默认使用目录)的改动会同步到主机的指定目录
VOLUME /tmp
#将自己的jar包加入生成的镜像中（在JDK这一层的基础上加上我们的jar构建新的镜像）
ADD target/learn-docker-0.0.1-SNAPSHOT.jar learn-docker.jar
#容器启动完执行
ENTRYPOINT ["java","-jar","learn-docker.jar"]
