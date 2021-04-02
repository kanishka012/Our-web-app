FROM tomcat:8.0-alpine
MAINTAINER kanishka
RUN apk update
RUN apk add wget
RUN wget --user=admin --password=Ban$alkanu2312 -O /usr/local/tomcat/webapps/our-web-app.war http://172.29.144.1:8082/artifactory/example-repo-local/com/nagarro/ourfirstapp/our-web-app/0.0.1-SNAPSHOT/our-web-app-0.0.1-SNAPSHOT.war
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run



