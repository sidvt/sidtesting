FROM schoolofdevops/maven:spring

WORKDIR /app

COPY . .

RUN mvn package && \
    mv target/spring-petclinic-2.4.2.jar /run/spring-petclinic-2.4.2.jar

EXPOSE 8080
    
CMD java -jar /run/spring-petclinic-2.4.2.jar