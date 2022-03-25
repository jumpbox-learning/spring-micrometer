FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine

WORKDIR /app

COPY ./target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-Xmx512m","-Duser.timezone=Asia/Bangkok","-jar","app.jar"]