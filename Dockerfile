FROM openjdk
ADD gh-actions-docker.jar /
RUN --mount=type=secret,id=UNAME \
  --mount=type=secret,id=PSWRD \
  export UNAME=$(cat /run/secrets/UNAME) && \
  export PSWRD=$(cat /run/secrets/PSWRD)
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080