FROM alpine

RUN apk add \
    git \
    helm \
    curl \
    unzip \
    gzip \ 
    postgresql-client

RUN curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 \
    install -m 555 argocd-linux-amd64 /usr/local/bin/argocd \
    rm argocd-linux-amd64