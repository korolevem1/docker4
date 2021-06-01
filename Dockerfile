FROM ubuntu:latest
RUN apt update
RUN apt install -f \
git \
maven \
WORKDIR /root/ 
RUN git clone https://github.com/tarekkhoury/mywebapplication.git
WORKDIR /root/mywebapplication/
RUN mvn package