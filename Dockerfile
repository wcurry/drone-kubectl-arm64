FROM ubuntu:latest
LABEL maintainer "Will Curry <wcurry@nofuntech.com>"

RUN apt-get update && apt-get install wget -y
RUN wget https://dl.k8s.io/v1.18.0-rc.1/kubernetes-client-linux-arm64.tar.gz
RUN tar zxf kubernetes-client-linux-arm64.tar.gz
