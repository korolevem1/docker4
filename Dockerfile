FROM ubuntu:latest
RUN apt-get update && apt-get install -f \
git \
maven 
WORKDIR /root/ 
RUN git clone https://github.com/tarekkhoury/mywebapplication.git
WORKDIR /root/mywebapplication/
RUN mvn package