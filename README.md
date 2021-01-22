# Developer Tools

> :warning: **No important design patterns used in microservices**. I will refactor it.

## SPM Configurations

All SPM Packages - except those required to be compatible with **Linux (backend microservices)** - are configured to check codestyling with swiftlint before commiting changes. *Even it's annoying to enforce good practices this way...*

Also there are Komondor, Danger and SwiftFormat already linked with all packages. When creating a new package please follow the existing pattern. *Should update this repo with SwiftGen to simplify package creation*

- *swift run komondor install* // Setup git hooks
- *swift run swiftformat* // run SwiftFormat
- *swift run swiftlint --autocorrect* // run SwiftLint
- *swift run danger-swift ci* // run danger in CI (for code reviews)

# Microservices

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
docker-compose up -d bogusapp-microservices-shareddatabase
```

## Port allocation

You should have 8180-8085 ports opened and unused on your machine to run microservices.

To find PIDs using a port use:

```
sudo lsof -i :PORT
```

Now, you should be able to get the PID and run:

```
kill -9 PID
```
