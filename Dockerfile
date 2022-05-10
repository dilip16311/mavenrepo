FROM tomcat:8
WORKDIR /usr/local/tomcat
EXPOSE 8080
COPY target/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
