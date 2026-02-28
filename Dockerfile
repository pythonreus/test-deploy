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

# Build project
RUN ./mvnw package -DskipTests

# Copy JAR to root
COPY ValentineChronicles/target/ValentineChronicles-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]