# Utiliser une image de base Java
FROM openjdk:17

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Installer les outils nécessaires pour tester la connectivité
RUN apk add --no-cache \
    curl \
    iputils

# Copier le jar généré dans le répertoire de travail
COPY target/Back_PFE-0.1.1.jar   /app/Back_PFE-0.1.1.jar

EXPOSE 8090

CMD ["java", "-jar", "Back_PFE-0.1.1.jar"]
