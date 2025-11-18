FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY . .

RUN ./mvnw package -DskipTests

EXPOSE 8080
CMD ["java", "-jar", "target/demojava-0.1.0.jar"]

