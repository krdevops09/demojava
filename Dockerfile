FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY . .
RUN apt update && apt install maven -y
RUN mvn package -DskipTests

EXPOSE 8080
CMD ["java", "-jar", "target/demojava-0.1.0.jar"]

