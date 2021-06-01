FROM tomcat:latest

#  install packages
RUN apt-get update && apt-get install -y \
git \
default-jdk \
maven

# get source code application from git 
WORKDIR /root/
RUN git clone https://github.com/tarekkhoury/mywebapplication.git

# make package
RUN mvn -f /root/mywebapplication/pom.xml clean package
RUN make -p /home/user/share
RUN cp /root/mywebapplication/target/mywebapplication.war    /home/user/share/mywebapplication.war