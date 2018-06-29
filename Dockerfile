FROM tomcat

RUN apt-get update

CMD ["add-apt-repository","ppa:webupd8team/java"]

CMD ["apt-get","update"]

CMD ["apt-get","install","-y supervisor openjdk-8-jdk"]

ADD /home/dit-user/workspace/Ant_Project/ant-demo/AntExample.war $CATALINA_HOME\webapps\

EXPOSE 8080
