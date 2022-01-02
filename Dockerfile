FROM openjdk
ADD gh-actions-docker.jar /
RUN --mount=type=secret,id=username \
  cat /run/secrets/username
ENV ABC="abcd"
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080