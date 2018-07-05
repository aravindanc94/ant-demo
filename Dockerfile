
FROM tomcat

COPY ["/dist/AntExample.war", "/usr/local/tomcat/webapps/"]

COPY ["build.xml","/usr/local/tomcat/conf/build.xml"]

CMD ["catalina.sh", "run"]

EXPOSE 8080
