FROM openjdk:8-jdk-slim
#在宿主机的/var/lib/docker目录下创建一个临时文件并把它链接到容器中的/tmp目录
WORKDIR /opt
# 将编译的jar拷贝的当前目录
ADD target/hello-0.0.1-SNAPSHOT.jar .
# set Time zone
#ENV TZ=Asia/Shanghai
#RUN set -eux; \
#	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
#	echo $TZ > /etc/timezone
#
#ENTRYPOINT ["java", "-jar", "/wechat-mall-gateway.jar"]