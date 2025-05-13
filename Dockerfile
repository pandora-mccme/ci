FROM alpine

RUN apk add \
    git \
    helm \
    curl \
    unzip \
    gzip \ 
    postgresql-client

RUN curl -sSL -o /tmp/argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
RUN install -m 555 /tmp/argocd-linux-amd64 /usr/local/bin/argocd