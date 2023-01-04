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
gcloud config set project __PROJECT__
```

### Cluster connection

```shell
gcloud container clusters get-credentials __PROJECT__ --region=__REGION__
```

