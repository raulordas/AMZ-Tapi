FROM maven:3.8.4-openjdk AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml -DskipTests=true clean package

FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
EXPOSE 8080
COPY --from=build home/app/target/hello-world-0.0.1-SNAPSHOT.jar /home/app/hello-world-0.0.1-SNAPSHOT.jar
ENTRYPOINT java -jar /home/app/hello-world-0.0.1-SNAPSHOT.jar