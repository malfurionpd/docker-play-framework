FROM malfurionpd/docker-oracle-jdk
MAINTAINER adeng <343753091@qq.com>

RUN yum update -y && yum install -y unzip
RUN curl -O http://downloads.typesafe.com/typesafe-activator/1.3.7/typesafe-activator-1.3.7.zip 
RUN unzip typesafe-activator-1.3.7.zip -d / && rm typesafe-activator-1.3.7.zip && chmod a+x /activator-1.3.7/activator
ENV PATH $PATH:/activator-1.3.7

EXPOSE 9000 8888
RUN mkdir /app
WORKDIR /app

CMD ["activator", "run"]
