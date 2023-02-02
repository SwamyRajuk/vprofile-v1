From tomcat:8.5.85-jdk8
RUN rm -rf /usr/local/tomcat/webapps/*
WORKDIR /usr/local/tomcat/
COPY /var/lib/docker/vprofile-v1.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
