FROM openjdk
ADD ./build/libs/gh-actions-docker.jar /
ARG UNAME
ARG PSWRD
ENV USERNAME=$UNAME
ENV PSWD=$PSWRD
ENV ABC="abcd"
ENTRYPOINT ["java", "-jar","/gh-actions-docker.jar"]
EXPOSE 8080