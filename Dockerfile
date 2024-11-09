# Utiliser une image de base Java
FROM openjdk:17

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le jar généré dans le répertoire de travail
COPY target/Back_PFE-0.1.1.jar   /app/Back_PFE-0.1.1.jar

EXPOSE 8081

CMD ["java", "-jar", "Back_PFE-0.1.1.jar"]

rapport_trivy.txt
find / -name "rapport_trivy.txt" 2>/dev/null
