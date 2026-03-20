FROM eclipse-temurin:17-jdk AS builder

WORKDIR /build

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline

COPY src ./src

RUN ./mvnw clean package -DskipTests

FROM eclipse-temurin:17-jre

WORKDIR /app

COPY wait-for-it.sh .
COPY --from=builder /build/target/*.jar app.jar

RUN chmod +x wait-for-it.sh


EXPOSE 8083

ENTRYPOINT ["sh", "-c", "./wait-for-it.sh postgres:5432 -- ./wait-for-it.sh rabbitmq:5672 -- java -jar app.jar"]