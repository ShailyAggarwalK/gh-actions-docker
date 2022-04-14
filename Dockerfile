FROM openjdk
ADD . /
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080