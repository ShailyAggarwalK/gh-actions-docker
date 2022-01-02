FROM openjdk
ADD gh-actions-docker.jar /
ENV ABC="abcd"
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080