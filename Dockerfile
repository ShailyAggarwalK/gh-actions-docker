FROM openjdk
ADD gh-actions-docker.jar /
ENV USERNAME=$UNAME
ENV PSWD=$PSWRD
ENV ABC="abcd"
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080