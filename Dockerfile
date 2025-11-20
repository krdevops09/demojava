FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
RUN apt update && apt install maven -y
COPY . .
RUN mvn -N wrapper
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

EXPOSE 8080
CMD sh -c "java -jar target/*.jar"

