FROM debian:bullseye-slim

ENV \
USE_GKE_GCLOUD_AUTH_PLUGIN='True'

RUN apt-get update; \
DEBIAN_FRONTEND=noninteractive apt-get install -y \
software-properties-common \
apt-utils \
apt-transport-https \
lsb-release \
ca-certificates \
gnupg \
gnupg1 \
gnupg2 \
git \
tini \
curl \
wget \
unzip

RUN set -eux; \
mkdir -p \
/etc/apt/keyrings \
/app

RUN set -eux; \
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
| gpg --dearmor -o /etc/apt/keyrings/cloud.google.gpg

RUN set -eux; \
echo \
"deb [arch=$(dpkg --print-architecture) \
signed-by=/etc/apt/keyrings/cloud.google.gpg] \
https://packages.cloud.google.com/apt \
cloud-sdk main" \
| tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

RUN set -eux; \
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
| gpg --dearmor -o /etc/apt/keyrings/kubernetes.gpg

RUN set -eux; \
echo \
"deb [arch=$(dpkg --print-architecture) \
signed-by=/etc/apt/keyrings/kubernetes.gpg] \
https://apt.kubernetes.io/ \
kubernetes-xenial main" \
| tee -a /etc/apt/sources.list.d/kubernetes.list

RUN set -eux; \
apt-get update; \
DEBIAN_FRONTEND=noninteractive apt-get install -y \
google-cloud-cli \
google-cloud-cli-anthos-auth \
google-cloud-cli-app-engine-go \
google-cloud-cli-app-engine-grpc \
google-cloud-cli-app-engine-java \
google-cloud-cli-app-engine-python \
google-cloud-cli-app-engine-python-extras \
google-cloud-cli-bigtable-emulator \
google-cloud-cli-cbt \
google-cloud-cli-cloud-build-local \
google-cloud-cli-cloud-run-proxy \
google-cloud-cli-config-connector \
google-cloud-cli-datalab \
google-cloud-cli-datastore-emulator \
google-cloud-cli-firestore-emulator \
google-cloud-cli-gke-gcloud-auth-plugin \
google-cloud-cli-kpt \
google-cloud-cli-kubectl-oidc \
google-cloud-cli-local-extract \
google-cloud-cli-minikube \
google-cloud-cli-nomos \
google-cloud-cli-pubsub-emulator \
google-cloud-cli-skaffold \
google-cloud-cli-spanner-emulator \
google-cloud-cli-terraform-validator \
google-cloud-cli-tests \
kubectl

WORKDIR /app

CMD ["tail -f /dev/null"]
