FROM openjdk:17
ADD ./target/tinySuma-0.0.1-SNAPSHOT.jar tinyservice.jar
ENTRYPOINT ["java","-jar","/tinyservice.jar"]