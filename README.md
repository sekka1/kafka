Kafka 2
===============

## Tags

* 2.0.10.1.0
* 2.10-0.8.2.2
* 2.11-0.10.1.0
* 2.11-0.10.1.1

## Starting the Container

     docker run \
     -p 9092:9092 \
     -v /opt/kafka/config/server.properties:/opt/kafka/config/server.properties \
     -v /opt/kafka/data:/tmp/kafka-logs \
     garland/kafka2:dev

## CoreOS machine setup

There are Ansible playbooks to help provision up a CoreOS machine with the folders and files it needs:

https://github.com/Vungle/ansible
