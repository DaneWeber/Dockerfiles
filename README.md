# Dockerfiles
Dockerfiles


## ubuntu-node-java

On Docker Hub at https://cloud.docker.com/repository/docker/daneweber/ubuntu-node-java/general

```
docker build -f ubuntu-node-java.Dockerfile -t daneweber/ubuntu-node-java:20190819 . && docker push -t daneweber/ubuntu-node-java:20190819
```

The image has been used in a Jenkins pipeline with the following:

```
docker run -w "/app/client" -v "$(pwd):/app/client" -e npm_config_cache="/app/client/.npm" daneweber/ubuntu-node-java:latest npm run sonar-scanner
```