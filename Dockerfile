FROM openjdk:8u171-jre-alpine3.7
COPY build/libs/dockerfile-for-springboot.jar /home
EXPOSE 5000
CMD java -jar /home/dockerfile-for-springboot.jar

