FROM maven:3.9.3-eclipse-temurin-21

WORKDIR /app

COPY ValentineChronicles/pom.xml .
COPY ValentineChronicles/src ./src

RUN mvn package -DskipTests

COPY ValentineChronicles/target/ValentineChronicles-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]