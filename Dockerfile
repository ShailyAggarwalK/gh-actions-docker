FROM openjdk
ADD ./build/libs/gh-actions-docker.jar /
ENV USERNAME=$UNAME
ENV PSWD=$PSWRD
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080