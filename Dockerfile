# Use Java 17 (compatible with Spring Boot 2/3)
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy everything into the container
COPY . .

# Build the project using Maven wrapper (skip tests for speed)
RUN ./mvnw clean package -DskipTests

# Run the Spring Boot JAR (replace with your actual jar name in /target)
CMD ["java", "-jar", "target/student-management-0.0.1-SNAPSHOT.jar"]
