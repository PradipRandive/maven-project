FROM tomcat:latest
LABEL author=Pradip
RUN apt-get update -y
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/

