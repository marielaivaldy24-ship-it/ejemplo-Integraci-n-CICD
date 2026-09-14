FROM maven:3.9-eclipse-temurin-26
WORKDIR /build
COPY pom.xml
RUN mvn -q dependecy:go-offline
COPY src ./src
RUN mvn - clean packege -DskipTests
FROM eclipse-temurin:26-jre
WORKDIR /app
COPY --from=build /buil/target/*.jar app.jar
RUN useradd -r -u 1001 appuser  cfown -R appuser /app
USER appuser
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "aap.jar"]