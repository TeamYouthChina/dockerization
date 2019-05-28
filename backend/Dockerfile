FROM openjdk:11 as build
WORKDIR /buildplace/app


COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# Using deploy config
COPY .circleci/deploy.application.properties src/resources/application.properties 
COPY .circleci/deploy.config.properties src/resources/config.properties


RUN ./mvnw install -DskipTests -Djar.finalName=youthchina-backend

FROM openjdk:11
VOLUME /tmp
WORKDIR /backend
ARG JAR_FILE=/buildplace/app/target/youthchina-backend.jar
COPY --from=build ${JAR_FILE} /backend/youthchina-backend.jar
ENTRYPOINT ["java","-jar","youthchina-backend.jar"]