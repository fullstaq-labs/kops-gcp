FROM google/cloud-sdk:262.0.0-alpine

RUN wget https://github.com/mozilla/sops/releases/download/3.4.0/sops-3.4.0.linux -O sops \
    && chmod +x sops \
    && wget https://github.com/kubernetes/kops/releases/download/1.13.0/kops-linux-amd64 -O /usr/bin/kops \
    && chmod +x /usr/bin/kops \
    && wget https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl -O /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl