# Microservices

> :warning: **No important design patterns used in microservices**. I will refactor it.

In order to run microservices you should already have installed Docker / Docker Hub and Docker Compose.

To run all services, including api gateway, you should first build or pull docker images. 
*Use "build" insted of "pull" in the following command to build all images instead of pulling them from Docker Hub*

```
docker-compose pull
```

Now you are able to run docker container. You can use Docker Hub or simply run the following command:

> :warning: ***If you run it for the very first time, please use up command twice, it will automigrate the database.***

```
docker-compose up
```

If you prefer to run a single service just run this command in service subdirectory.

## Run PlSQL database only

If you want to run the PLSql container without other services (it is required if you want to run services from Xcode) you should run the following command:

```
docker-compose up -d bogusapp-microservices-debugdatabase
```
