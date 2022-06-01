FROM alpine:latest

COPY install.sh install.sh
RUN ash install.sh

#RUN apk add curl
#RUN apk add openssl
#RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
#RUN chmod 700 get_helm.sh
#RUN ash ./get_helm.sh
#
#RUN rm ./get_helm.sh
#
#RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#RUN curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
#RUN echo "$(cat kubectl.sha256)  kubectl" | sha256sum -c
#RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
#
#RUN rm kubectl.sha256
#RUN rm kubectl
#
#RUN curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
#RUN mv /tmp/eksctl /usr/local/bin
#
#RUN apk add --no-cache aws-cli
#
#RUN apk del curl
#RUN apk del openssl
#RUN ls