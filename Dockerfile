FROM amazoncorretto:19-alpine-jdk

MAINTAINER emaaristimuno

COPY target/portfolio.jar portfolio.jar

ENTRYPOINT ["java","-jar","/portfolio.jar"]