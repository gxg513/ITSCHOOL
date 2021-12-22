FROM alpine:3.14
RUN apt update -y
RUN apt install sshd-server