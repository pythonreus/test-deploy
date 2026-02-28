FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

# Copy Maven wrapper
COPY ValentineChronicles/mvnw .
COPY ValentineChronicles/.mvn .mvn

# Copy project files
COPY ValentineChronicles/pom.xml .
COPY ValentineChronicles/src ./src

# Give executable permissions to mvnw
RUN chmod +x mvnw

# Build project (this creates target/*.jar)
RUN ./mvnw package -DskipTests

# Run the JAR from the container's target folder
ENTRYPOINT ["java", "-jar", "target/ValentineChronicles-0.0.1-SNAPSHOT.jar"]