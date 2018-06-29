FROM tomcat

RUN apt-get update

CMD ["add-apt-repository","ppa:webupd8team/java"]

CMD ["apt-get","update"]

CMD ["apt-get","install","-y supervisor openjdk-8-jdk"]

COPY ["AntExample.war","/usr/local/tomcat/webapp"]

EXPOSE 8080
