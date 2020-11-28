# Updated as of Nov 21, 2020
FROM ubuntu:20.04

#Author of the Docker File
# MAINTAINER Nagaraj Note: MAINTAINER has been deprecated for LABEL, 
# LABEL is a key value pair 
LABEL "Maintainer"="Nagaraj"

# install packages
RUN apt-get update && \
    apt-get install -y curl \
    wget

RUN apt-get install -y openjdk-11-jdk
RUN apt install -y maven

# ADD a directory called auto start app inside the JDK IMAGE where you will be moving all of these files under this 
# DIRECTORY to
ADD . /usr/local/spring-boot-app

# AFTER YOU HAVE MOVED ALL THE FILES GO AHEAD CD into the directory
RUN cd /usr/local/spring-boot-app && mvn install

#THE CMD COMMAND tells docker the command to run when the container is started up from the image. In this case we are
# executing the java program as is to print Hello World.
CMD ["java", "-jar", "/usr/local/spring-boot-app/target/spring-boot-app-0.0.1-SNAPSHOT.jar"]