FROM maven:3.8.4-openjdk-8-slim

WORKDIR ~

ADD ./target/reserve-web-app-0.0.1-SNAPSHOT.jar  ./reserve-web-app.jar
	
ENTRYPOINT ["java", "-jar"]

CMD ["reserve-web-app.jar"]

EXPOSE 8070