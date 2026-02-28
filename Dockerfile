# Use a JDK image
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Maven project files
COPY ValentineChronicles/pom.xml .
COPY ValentineChronicles/src ./src

# Build the project
RUN ./mvnw package -DskipTests

# Copy the built jar to /app
RUN cp target/ValentineChronicles-0.0.1-SNAPSHOT.jar app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]