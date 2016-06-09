FROM vungle/java:oracle8

MAINTAINER Vungle

RUN apt-get update; \
    apt-get install -y unzip  \
    wget jq

# Install Kafka
RUN curl http://mirror.cc.columbia.edu/pub/software/apache/kafka/0.8.2.2/kafka_2.10-0.8.2.2.tgz | tar xz -C /opt
RUN ln -s /opt/kafka_2.10-0.8.2.2 /opt/kafka

#ENV JAVA_HOME /usr/lib/jvm/${INSTALL_JAVA_JDK_VERSION}
#ENV KAFKA_HOME /opt/kafka
EXPOSE 9092
WORKDIR /opt

VOLUME ["/kafka"]

ADD ./scripts /opt/scripts
RUN chmod 777 /opt/scripts/*

# Add jar file to kafka libs
ADD ./jars/* /opt/kafka/libs/

ENTRYPOINT ["/opt/scripts/run.sh"]
