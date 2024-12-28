# Utiliser une image de base avec OpenJDK
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR compilé dans le conteneur
COPY target/spring-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port 8080
EXPOSE 8080

# Exécuter l'application Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]