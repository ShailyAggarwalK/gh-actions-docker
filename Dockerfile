FROM openjdk
ADD gh-actions-docker.jar /
RUN --mount=type=secret,id=USERNAME cat /run/secrets/USERNAME
ENV ABC="abcd"
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080