FROM debian:buster-slim

ENV ARGOCD_VERSION 1.7.8
ENV ARGOCD_CHECKSUM 3f169184a790338eb03bca9d0986981025a35b3380c7160afa5bda9191ce10dc

# Install ArgoCD CLI
ADD https://github.com/argoproj/argo-cd/releases/download/v${ARGOCD_VERSION}/argocd-linux-amd64 /usr/local/bin/argocd
RUN chmod +x /usr/local/bin/argocd

RUN echo "${ARGOCD_CHECKSUM} /usr/local/bin/argocd" | sha256sum -c
