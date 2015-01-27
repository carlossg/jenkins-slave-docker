FROM tutum/centos

MAINTAINER Carlos Sanchez <carlos@apache.org>

ENV HOME /home/jenkins-slave

RUN useradd -c "Jenkins Slave user" -d $HOME -m jenkins-slave
RUN yum -y install java-1.7.0-openjdk

USER jenkins-slave

VOLUME /home/jenkins-slave
