FROM tomcat:10.1.15-jdk21
LABEL author=prakash
RUN apt-get update -y
COPY /var/lib/jenkins/workspace/configuration_docker_jenkins/webapp/target/webapp.war /usr/local/tomcat/webapp

