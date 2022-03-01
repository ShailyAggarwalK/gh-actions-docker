FROM openjdk
ADD gh-actions-docker.jar /
RUN --mount=type=secret,id=UNAME \
  --mount=type=secret,id=PSWRD \
  export UNAME=$(cat /run/secrets/UNAME) && \
  export PSWRD=$(cat /run/secrets/PSWRD) && \
  echo $UNAME
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080