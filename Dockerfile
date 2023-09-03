FROM tomcat:9.0.80-jdk8
LABEL author: Pradeep
RUN apt-get update -y && \
COPY /var/lib/jenkins/workspace/jenkins-docker-cicd/target/webapps.war  /usr/local/tomcat/webapps/

