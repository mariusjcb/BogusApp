![Demo WatchOS](demo-watchos.gif)


> :warning: **Please ignore Microservices code styling**. I will refactor it.

> :warning: **For now you are unable to send emails from TV. I tried MultipeerConnectivity but still not working yet.**.

> :warning: **Keep iOS app opened while trying to send emails from Apple Watch. The companion iOS app will automatically open compose controller for you.**.

**Known Issue:** You are able to navigate through screens even there is no selection. It's easy to fix it from ViewModels tho

# Components

* **Microservices**: Vapor microservices for server-side.
* **Common/***: Shared generic components between apps / app-server.
* **Features/***: Shared features. Each feature have at least a ViewModel.

I used **MVVM with FlowCoordinators** as main architecture (see Common-UIComponents and AppFlowCoordinators). Complex features have own structure based on **Clean**.

## WIP: XCTests, XCUITests, CI/CD Workflows

* Had not time to write some xc(ui)tests yet
* Had not time to configure CI/CD with github actions yet

# Clone Project

To properly clone the project please use --recurse-submodules

```
git clone --recurse-submodules https://github.com/mariusjcb/BogusApp.git
```

# SwiftLint & Komondor

All SPM Packages - except those required to be compatible with **Linux (backend microservices)** - are configured to check codestyling with swiftlint before commiting changes. *Even it's annoying to enforce good practices this way...*

Also there are Komondor already linked with all packages. When creating a new package please follow the existing pattern. *Should update this repo with SwiftGen to simplify package creation*

- **swift run komondor install** // Setup git hooks, run it after submodule installation or before git commiting for the first time on your machine
- **swift run swiftlint --autocorrect** // run SwiftLint


# Microservices

In order to run microservices you should already have installed Docker / Docker Hub and Docker Compose.

To run all services, including api gateway, you should first build or pull docker images. 
*Use "build" insted of "pull" in the following command to build all images instead of pulling them from Docker Hub*

```
cd Microservices && docker-compose pull && cd ..
```

Now you are able to run docker container. You can use Docker Hub or simply run the following command:

> :warning: ***If you run it for the very first time, please use up command twice, it will automigrate the database.***

```
cd Microservices && docker-compose up && cd ..
```


## Run PlSQL database only

If you want to run the PLSql container without other services (it is required if you want to run services from Xcode) you should run the following command:

```
cd Microservices && docker-compose up -d bogusapp-microservices-debugdatabase && cd ..
```

## Port allocation

You should have 8180-8085 ports opened and unused on your machine to run microservices.

To find PIDs using a port use:

```
sudo lsof -i :PORT
```

Now, you should be able to get the PID and run:

```
sudo kill -9 PID
```
