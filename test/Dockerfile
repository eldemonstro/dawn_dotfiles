FROM ubuntu

RUN apt-get update && apt-get install sudo curl -y
RUN useradd -m -s /bin/bash -G sudo newuser
RUN echo "newuser:password" | chpasswd
USER newuser
WORKDIR /home/newuser

