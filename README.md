Kafka 2
===============

# Supported tags and respective `Dockerfile` links

* 2.10-0.8.2.2
* 2.11-0.10.1.0
* 2.11-0.10.1.1
* kafka_2.12-0.10.2.0

## Starting the Container

     docker run \
     -p 9092:9092 \
     -v /opt/kafka/config/server.properties:/opt/kafka/config/server.properties \
     -v /opt/kafka/data:/tmp/kafka-logs \
     garland/kafka:kafka_2.12-0.10.2.0

## Docker compose
There is a docker-compose file that will startup a zookeeper container and then
the Kafka container.

    docker-compose up
