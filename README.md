# Developer Tools

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

Now you are able to run docker container. You can use Docker Hub or simply run the following command:

```
docker-compose up
```

If you prefer to run a single service just run this command in service subdirectory.


# Access & Gateway

Please don't try to call microservices directly. You are unable to call 8081-8084 ports due to docker protection. 

Even ports are exposed by *Dockerfile* I preffered to publish only the 8080 port to the host. 

So, even microservices are capable to call each other, you should never be able to call them directly from your host.
