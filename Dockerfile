FROM openjdk:8u171-jre-alpine3.7
COPY build/libs/docker-maintenance.jar /home
EXPOSE 5000
CMD java -jar /home/docker-maintenance.jar

