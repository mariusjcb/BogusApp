# Microservices

> :warning: **No important design patterns used in microservices**. I will refactor it.

In order to run microservices you should already have installed Docker / Docker Hub and Docker Compose.

To run all services, including api gateway, you should first build docker images. I really recommend you to build microservicess in parallel:

```
docker-compose build --parallel
```

If you experience some unclear build problems please try the same command without parallel flag.

Now you are able to run docker container. You can use Docker Hub or simply run the following command:

```
docker-compose up
```

If you prefer to run a single service just run this command in service subdirectory.

## Run PlSQL database only

If you want to run the PLSql container without other services (it is required if you want to run services from Xcode) you should run the following command:

```
docker-compose up -d bogusapp-microservices-debugdatabase
```
