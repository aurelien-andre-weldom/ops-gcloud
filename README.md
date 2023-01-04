# OPS GCLOUD

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
