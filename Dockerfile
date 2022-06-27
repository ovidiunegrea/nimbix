FROM amazon/aws-cli
#FROM rockylinux:8

#RUN dnf -y update && \
#    dnf -y install unzip
#RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#RUN unzip awscliv2.zip
#RUN  ./aws/install
RUN aws --version
RUN aws sts get-caller-identity
#RUN aws s3 ls
RUN aws s3 cp s3://appsoft-data/lsdyna/ls-dyna_smp_s_R12_0_0_x64_redhat65_ifort160.gz /tmp/
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
