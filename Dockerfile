FROM tomcat:9.0.80-jdk8
LABEL author: Pradeep
RUN apt-get update -y 
COPY webapp/target/webapp.war  /usr/local/tomcat/webapps/

