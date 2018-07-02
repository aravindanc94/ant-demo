# FROM tomcat

# RUN apt-get update

# CMD ["catalina.sh", "run"]

# CMD ["add-apt-repository","ppa:webupd8team/java"]

# CMD ["apt-get","update"]

# CMD ["apt-get","install","-y openjdk-8-jdk"]

# COPY ["/dist/AntExample.war", "/usr/local/tomcat/webapps/examples/"]

# CMD ["catalina.sh", "run"]

# EXPOSE 8080
###################################
FROM tomcat:8.0.20-jre8

COPY ["/dist/AntExample.war", "/usr/local/tomcat/webapps/"]

COPY ["build.xml","/usr/local/tomcat/conf/build.xml"]

CMD ["catalina.sh", "run"]

EXPOSE 9999
