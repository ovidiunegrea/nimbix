#FROM jenkins/inbound-agent:4.7-1
FROM centos:latest
RUN yum update -y && yum install -y unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN  ./aws/install
RUN sleep 1000
#RUN yum update -y
#RUN ip a sh
#RUN ping -c2 1.1.1.1

#USER root

#RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf && cat /etc/resolv.conf

#RUN cat /etc/resolv.conf && ls -l /etc/resolv.conf

#RUN yum update -y

#RUN ping -c2 download.docker.com

#RUN apt-get update

#RUN apt-get install -y \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg-agent 
#RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -  
#RUN apt-key fingerprint 0EBFCD88 
#RUN add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/debian \
#   $(lsb_release -cs) \
#   stable"
#RUN apt-get update
#RUN apt-get install -y docker-ce-cli
