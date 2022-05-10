FROM tomcat
WORKDIR /usr/local/tomcat
EXPOSE 8080
RUN mv webapps webapps2 && mv webapps.dist webapps
COPY target/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
