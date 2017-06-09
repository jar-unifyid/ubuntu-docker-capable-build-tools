FROM ubuntu:16.04
MAINTAINER nicetry@example.com

RUN apt-get update && apt-get install -y \
apt-transport-https \
curl \
lxc \
libxtables11 \
curl git htop man vim screen \
python python-dev python-pip python-virtualenv \
build-essential && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh
RUN pip install awscli


