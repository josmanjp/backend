FROM amazoncorretto:19-alpine-jdk

MAINTAINER emaaristimuno

COPY target/PorfolioBe-0.0.1-SNAPSHOT.jar PorfolioBe-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/PorfolioBe-0.0.1-SNAPSHOT.jar"]