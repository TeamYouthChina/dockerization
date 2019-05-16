FROM openjdk:11 as build
WORKDIR /buildplace/app


COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw install -DskipTests -Djar.finalName=youthchina-backend

FROM openjdk:11
VOLUME /tmp
WORKDIR /backend
ARG JAR_FILE=/buildplace/app/target/youthchina-backend.jar
COPY --from=build ${JAR_FILE} /backend/youthchina-courier.jar
ENTRYPOINT ["java","-jar","youthchina-backend.jar"]