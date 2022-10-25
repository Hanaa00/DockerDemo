FROM maven as build 
WORKDIR /workspace
COPY . .
RUN mvn install 
FROM openjdk:8 
ENTRYPOINT [ "java", "-jar","demo-1.4.jar" ]
EXPOSE 8080
