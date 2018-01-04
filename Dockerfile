FROM node:9.3.0

RUN apt-get update && apt-get install -y python-pip libpython-dev
RUN pip install awscli
RUN wget https://github.com/rancher/cli/releases/download/v0.6.7/rancher-linux-amd64-v0.6.7.tar.gz
RUN tar -xvzf rancher-linux-amd64-v0.6.7.tar.gz
RUN mv rancher-v0.6.7/rancher /usr/bin/
RUN rm -fr rancher Doc