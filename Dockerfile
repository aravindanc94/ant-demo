FROM tomcat

RUN apt-get update

CMD ["add-apt-repository","ppa:webupd8team/java"]

CMD ["apt-get","update"]

CMD ["apt-get","install","-y supervisor openjdk-8-jdk"]

EXPOSE 8080
