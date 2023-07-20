FROM openjdk:8-jdk-alpine
COPY build.jar ./
CMD java -jar /build.jar $PAYMENT_SERVICE $SHIPPING_SERVICE $PRODUCTS_SERVICE
