FROM ubuntu:latest
LABEL maintainer "Will Curry <wcurry@nofuntech.com>"

RUN apt-get update && apt-get install curl -y
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/arm64/kubectl"
