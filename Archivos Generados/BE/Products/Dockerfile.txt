FROM openjdk:8-jdk-alpine
ARG JAR_FILE=products-service-example-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
CMD java -jar /app.jar

# brew install maven
# mvn clean package
# docker build --build-arg JAR_FILE=/target/products-service-example-0.0.1-SNAPSHOT.jar -t products:latest . 
# docker run -p 8080:8080 products:latest 