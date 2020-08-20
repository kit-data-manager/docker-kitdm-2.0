# docker-kitdm-2.0

This repository contains a collection of docker images to run KIT DM 2.0 repository instances easily as well as more complex setups utilizing multiple images via docker-compose. The main purpose of such instances is for testing, however, they can also be easily adapted for production use, e.g. by introducing database backups and container restarts on failure. All single-service images are build and hosted at [DockerHub](https://hub.docker.com/) and can be found under the namespace ***kitdm***. 

# Build Status

| Service |Build Status|
|---|---|
| base-repo | ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kitdm/base-repo) |
| collection-api | ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kitdm/collection-api) | 
| admin-service | ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kitdm/admin-service) |

## Prerequisites

* docker (tested with 18.09.2)
* docker-compose (tested with 1.24.0-rc1)

## Building and Startup

Typically, there is no need for locally building single-service images hosted in this repository as all version are accessible via [DockerHub](https://hub.docker.com/).

Running for example a base-repo instance can be achieved as follows:

```
user@localhost:/home/user/$ docker run -p 8080:8080 kitdm/base-repo
[...]
user@localhost:/home/user/$
```

The same applies to all single-service images, e.g. collection-api or admin-service.
In some cases, you may want to change the configuration of the service instance. All service-specific configuration is located in each image at

```/<service-name>/conf/application.properties```

You can easily overwrite this file by creating an own Dockerfile, which looks as follows in case of the base-repo service:

```
FROM kitdm/base-repo:latest

COPY application.properties /base-repo/config/application.properties
```

Afterwards, you have to build the modified image locally by calling:

```
user@localhost:/home/user/my-base-repo/$ docker build .
[...]
user@localhost:/home/user/my-base-repo/$
```

Now, you can start the container using your modified configuration.

For more complex setups, e.g. the one stored in the `testbed` folder, we utilize docker-compose. The entire setup can be build by calling:

```
user@localhost:/home/user/docker-kitdm-2.0/testbed/$ docker-compose up
[...]
user@localhost:/home/user/docker-kitdm-2.0/testbed/$
```


## License

The KIT Data Manager is licensed under the Apache License, Version 2.0.
