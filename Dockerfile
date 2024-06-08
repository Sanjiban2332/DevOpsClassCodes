FROM tomcat
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jdk
ADD target/addressbook.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
