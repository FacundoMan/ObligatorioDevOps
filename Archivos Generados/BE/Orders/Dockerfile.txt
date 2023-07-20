FROM openjdk:8-jdk-alpine
ARG JAR_FILE=orders-service-example-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
CMD ["abfdca1dd319f453b98685429ff4d417-1896863135.us-east-1.elb.amazonaws.com", "a41213400f45a4f25864f6162eaea70c-1625216118.us-east-1.elb.amazonaws.com", "a81afd56394fc4a9d890d759051c666e-1416510889.us-east-1.elb.amazonaws.com"]
ENTRYPOINT ["java", "-jar", "/app.jar"]
