FROM tomcat
WORKDIR /usr/local/tomcat
RUN mv webapps webapps2 && mv webapps.dist webapps
EXPOSE 8080
COPY studentapp-2.5-SNAPSHOT.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
