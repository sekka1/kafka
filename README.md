Kafka 2
===============


## Starting the Container

     docker run \
     -p 9092:9092 \
     -v /opt/kafka/config/server.properties:/opt/kafka/config/server.properties \
     -v /opt/kafka/data:/tmp/kafka-logs \
     vungle/kafka2:dev
     
## CoreOS machine setup

There are Ansible playbooks to help provision up a CoreOS machine with the folders and files it needs:

https://github.com/Vungle/ansible