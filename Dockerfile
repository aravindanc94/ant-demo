FROM tomcat

RUN apt-get update

CMD ["add-apt-repository","ppa:webupd8team/java"]

CMD ["apt-get","update"]

CMD ["apt-get","install","-y openjdk-8-jdk"]

COPY ["/dist/AntExample.war", "/usr/local/tomcat/webapps/examples/"]

EXPOSE 8080
