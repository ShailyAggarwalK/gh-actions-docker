FROM openjdk
ADD ./build/libs/gh-actions-docker.jar /
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080