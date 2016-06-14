FROM jenkinsci/jenkins
MAINTAINER Daniel Moll <dmoll1974@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt

RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

COPY ./jenkins_home/jobs usr/share/jenkins/ref/jobs

COPY ./jenkins_home/users usr/share/jenkins/ref/users

COPY ./jenkins_home/tools usr/share/jenkins/ref/tools

COPY ./jenkins_home/config.xml usr/share/jenkins/ref/config.xml

COPY ./jenkins_home/jenkins.mvn.GlobalMavenConfig.xml  usr/share/jenkins/ref/jenkins.mvn.GlobalMavenConfig.xml

COPY ./jenkins_home/hudson.tasks.Maven.xml  usr/share/jenkins/ref/hudson.tasks.Maven.xml

COPY ./jenkins_home/jenkins.model.JenkinsLocationConfiguration.xml  usr/share/jenkins/ref/jenkins.model.JenkinsLocationConfiguration.xml

ENV JAVA_OPTS="-Xmx2024m"

