FROM jenkins/jenkins:2.130-slim

USER root

# initial refresh
RUN apt update -y && apt upgrade -y

# install docker
RUN apt install apt-transport-https ca-certificates curl software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
RUN apt update
RUN apt install docker-ce -y

# install sass
RUN apt install sass -y

USER jenkins

EXPOSE 8080


