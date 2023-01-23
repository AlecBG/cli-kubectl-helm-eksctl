apk add curl
apk add openssl
curl -L https://git.io/get_helm.sh | ash -s -- --version v3.8.2

rm ./get_helm.sh

curl -LO "https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/v1.23.6/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum -c
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

rm kubectl.sha256
rm kubectl

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
mv /tmp/eksctl /usr/local/bin

apk del openssl
