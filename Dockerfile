FROM adoptopenjdk:8
COPY ./target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jar
CMD ["java","-jar","java-fundamentals-1.0.jar"]
