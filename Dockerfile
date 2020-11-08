FROM ubuntu:latest
LABEL maintainer "Will Curry <wcurry@nofuntech.com>"

RUN apt-get update && apt-get upgrade -y && apt-get install curl -y
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/arm64/kubectl"
