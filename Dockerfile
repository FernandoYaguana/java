# Usar una imagen base de Tomcat
FROM tomcat:9-jdk8-openjdk-slim

# Establecer el directorio de trabajo
WORKDIR /usr/local/tomcat/webapps

# Copiar el archivo WAR generado por Maven en el contenedor
COPY target/appWeb-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto en el que Tomcat ejecutará la aplicación (usualmente 8080)
EXPOSE 8080

# Iniciar Tomcat cuando el contenedor se ejecute (Tomcat ya maneja la ejecución del WAR)
CMD ["catalina.sh", "run"]