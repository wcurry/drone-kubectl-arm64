FROM ubuntu:latest
LABEL maintainer "Will Curry <wcurry@nofuntech.com>"

ARG KUBECTL_VERSION
RUN test -n "$KUBECTL_VERSION"

COPY init-kubectl kubectl /opt/drone-kubectl-arm64/bin/

RUN apt-get update && apt-get upgrade -y && apt-get install curl -y
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/arm64/kubectl"
RUN chmod 755 kubectl && mv kubectl /usr/local/bin/kubectl

ENV PATH="/opt/drone-kubectl-arm64/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
