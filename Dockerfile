FROM openjdk:8u282-jre
EXPOSE 8080

#RUN ./mvnw clean package
COPY ./target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /

ENTRYPOINT ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar", "--spring.profiles.active=mysql"]
