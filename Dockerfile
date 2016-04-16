FROM jenkins
MAINTAINER Daniel Moll <dmoll1974@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt

RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

COPY jenkins_home/jobs usr/share/jenkins/ref/jobs


ENV JAVA_OPTS="-Xmx2024m"

