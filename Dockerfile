
# -------- Stage 1: Build --------
FROM maven:3.9.9-eclipse-temurin-17 AS builder
WORKDIR /app

# Copy everything
COPY . .

RUN mvn clean install -DskipTests


# -------- Stage 2: Run --------
FROM tomcat:9-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
