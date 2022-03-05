FROM ubuntu:20.04
RUN apt update -y
RUN apt install openssh-server -y
RUN mkdir -p /root/.ssh &&     chmod 0700 /root/.ssh
COPY id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys
EXPOSE 22
ENTRYPOINT ["tail", "-f", "/dev/null"]
