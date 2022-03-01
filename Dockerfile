FROM openjdk
ADD gh-actions-docker.jar /
RUN --mount=type=secret,id=UNAME export UNAME=$(cat /run/secrets/UNAME) && echo $UNAME
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080