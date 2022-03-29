FROM openjdk
ADD gh-actions-docker.jar /
RUN --mount=type=secret,id=UNAME --mount=type=secret,id=PSWRD \
    export UNAME=$(cat /run/secrets/UNAME) && echo "HELLO" && echo $UNAME
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080