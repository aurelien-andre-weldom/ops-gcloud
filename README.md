# OPS GCLOUD

Docker image allowing to execute gcloud-cli operations

Libraries:
- google-cloud-cli
- google-cloud-cli-anthos-auth
- google-cloud-cli-app-engine-go
- google-cloud-cli-app-engine-grpc
- google-cloud-cli-app-engine-java
- google-cloud-cli-app-engine-python
- google-cloud-cli-app-engine-python-extras
- google-cloud-cli-bigtable-emulator
- google-cloud-cli-cbt
- google-cloud-cli-cloud-build-local
- google-cloud-cli-cloud-run-proxy
- google-cloud-cli-config-connector
- google-cloud-cli-datalab
- google-cloud-cli-datastore-emulator
- google-cloud-cli-firestore-emulator
- google-cloud-cli-gke-gcloud-auth-plugin
- google-cloud-cli-kpt
- google-cloud-cli-kubectl-oidc
- google-cloud-cli-local-extract
- google-cloud-cli-minikube
- google-cloud-cli-nomos
- google-cloud-cli-pubsub-emulator
- google-cloud-cli-skaffold
- google-cloud-cli-spanner-emulator
- google-cloud-cli-terraform-validator
- google-cloud-cli-tests
- kubectl

## Docker

### Build

```shell
docker build . -t ops-gcloud:latest
```

### Run

```shell
docker run -it --rm ops-gcloud:latest bash
```

## Usage

### Login

```shell
gcloud auth login
```

### Project connection

```shell
gcloud config set project <project>
```

### Cluster connection

```shell
gcloud container clusters get-credentials <project> --region=<region>
```

### Copy file

```shell
kubectl cp -n <namespace> <pod-name>:<fully-qualified-file-name> /<path-to-your-file-local>/<file-name>
```
