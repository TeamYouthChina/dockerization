FROM openjdk:11 as build
WORKDIR /buildplace/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw install -DskipTests -Djar.finalName=youthchina-courier

FROM openjdk:11
VOLUME /tmp
WORKDIR /courier
ARG JAR_FILE=/buildplace/app/target/youthchina-courier.jar
COPY --from=build ${JAR_FILE} /courier/youthchina-courier.jar
ENTRYPOINT ["java","-jar","youthchina-courier.jar"]