FROM openjdk
ADD gh-actions-docker.jar /
ADD . /
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080