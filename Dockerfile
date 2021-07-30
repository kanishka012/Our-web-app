
//FROM tomcat


 
//ADD target/our-web-app.war /usr/local/tomcat/webapps/.
FROM tomcat:8.5-alpine

 
MAINTAINER Priya Chaudhary

 
COPY tomcat-users.xml /usr/local/tomcat/conf/

 
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

 
ADD target/Spring.war /usr/local/tomcat/webapps/

 
EXPOSE 8080

 
CMD ["catalina.sh", "run"]







