FROM openjdk:11-alpine

WORKDIR /app

COPY ./target/*.jar app.jar

EXPOSE 3000
ENTRYPOINT ["java","-Xmx512m","-Duser.timezone=Asia/Bangkok","-jar","app.jar"]