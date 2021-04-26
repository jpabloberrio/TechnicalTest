FROM maven:3.5-jdk-8 AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package

FROM openjdk:8-jre-slim
COPY --from=build /usr/src/app/target/zemoga-techinal-test-0.0.1-SNAPSHOT.jar /usr/app/zemoga-techinal-test.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/app/zemoga-techinal-test.jar"]
