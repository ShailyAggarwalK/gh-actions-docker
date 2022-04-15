FROM openjdk
ADD config /config
ADD gh-actions-docker.jar /
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080