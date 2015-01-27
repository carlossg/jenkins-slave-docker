FROM tutum/centos

MAINTAINER Carlos Sanchez <carlos@apache.org>

ENV HOME /home/jenkins-slave

RUN yum -y install java-1.7.0-openjdk

VOLUME /home/jenkins-slave
