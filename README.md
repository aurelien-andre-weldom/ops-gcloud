# GCLOUD

### Build

```shell
docker build . -t gcloud:latest
```

### Run

```shell
docker run -it --rm gcloud:latest bash
```

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
