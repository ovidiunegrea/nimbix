FROM jenkins/inbound-agent:4.7-1


USER root

RUN cat /etc/resolv.conf

RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf

RUN cat /etc/resolv.conf

RUN ping -c2 10.0.0.2

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
