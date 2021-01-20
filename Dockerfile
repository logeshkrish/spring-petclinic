FROM openjdk:11.0.1-jre-slim-stretch
EXPOSE 8080
ARG JAR=spring-petclinic-2.4.0.BUILD-SNAPSHOT.jar
COPY target/$JAR /app.jar
ENTRYPOINT ["java","-Dspring.profiles.active=mysql","-DMYSQL_URL=jdbc:mysql://104.197.242.55:30005/petclinic","-jar","/app.jar"]
