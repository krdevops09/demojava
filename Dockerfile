FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY . .
RUN apt update && apt install maven -y
RUN mvn clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/*.jar"]

