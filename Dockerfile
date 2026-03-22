# Estágio de compilação (Maven + JDK 21)
FROM maven:3.8.8-eclipse-temurin-21 AS build

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

# Estágio final (Tomcat 10 + JDK 21)
FROM tomcat:10.1.21-jdk21

# Remove aplicação padrão do Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia o WAR gerado como ROOT.war (aplicação principal)
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expor a porta padrão (Render usa 10000 externamente, mas internamente usamos 8080)
EXPOSE 8080

# Inicia o Tomcat
CMD ["catalina.sh", "run"]