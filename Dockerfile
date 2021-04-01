FROM tomcat

 
COPY target/our-web-app.war /usr/local/tomcat/webapps/.
#On which port it will run


EXPOSE 9081





# Run the tomcat server


CMD ["catalina.sh", "run"]



