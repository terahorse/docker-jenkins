FROM jenkins/jenkins:2.129-alpine
COPY build/libs/docker-maintenance.jar /home
EXPOSE 5000
CMD java -jar /home/docker-maintenance.jar

