# docker-kitdm-2.0

This repository contains a collection of docker images to run KIT DM 2.0 repository instances easily. The main purpose of such instances is for testing, however, they can also be easily adapted for production use, e.g. by introducing database backups and container restarts on failure.

## Prerequisites

* docker (tested with 18.09.2)
* docker-compose (tested with 1.24.0-rc1)

## Building and Startup

Before you start building your docker images you have to choose between two different ways of creating your repository instance: 

1. Building from source. If you want to pull the sources from GitHub from an arbitrary branch. In that case, you should switch into the 'source' folder before continuing.
2. Building using pre-compiled binary. If you built the repository service binary on your own and want to use it inside docker, you should switch into the 'binary' folder before continuing.  

Let's assume you want to use an existing binary and you are already in the 'binary' folder. Now, you should place the binary in a file named 'base-repo.jar' in the 'tomcat' folder. After doing this, all subsequent commands are identical for both approaches, the 'binary' and the 'source'.

```
user@localhost:/home/user/docker-kitdm-2.0/source$ docker-compose up
Creating network "source_default" with the default driver
Building database
Step 1/2 : FROM postgres:11
 ---> f97a959a7d9c
[....]
tomcat      | Spring is running!
```

This procedure should take only a few seconds in case of using a binary. If you build everything from source, the procedure may take a few minutes. As soon as you see the message that Spring is running, you are able to access the repository. Without changing anything, the repository will be accessible via 

http://localhost:8090/api/v1/

A documentation guiding you through the first steps you'll find at

http://localhost:8090/static/docs/documentation.html

## License

The KIT Data Manager is licensed under the Apache License, Version 2.0.
