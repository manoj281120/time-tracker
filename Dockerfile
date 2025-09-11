# or tomcat:10, depending on your app
FROM tomcat:9-jdk17  

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR into webapps folder
COPY web/target/time-tracker-web-*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Tomcat is already the entrypoint
