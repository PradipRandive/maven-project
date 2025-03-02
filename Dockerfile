FROM tomcat:latest
LABEL author=prakash
RUN apt-get update -y
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/

