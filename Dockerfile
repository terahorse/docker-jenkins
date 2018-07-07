FROM jenkins/jenkins:2.130-slim
EXPOSE 8080

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

# prepare init script and entry point
RUN echo "service docker start" >> /usr/local/bin/init.sh
RUN echo "/usr/local/bin/jenkins.sh" >> /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/init.sh"]


