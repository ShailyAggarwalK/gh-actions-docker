FROM openjdk
ADD .env /
ADD gh-actions-docker.jar /
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080