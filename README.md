# docker-kitdm-2.0

This repository contains a collection of docker setups to run different KIT DM 2.0 repository infrastructures easily. The main purpose of such infrastructures is for testing, however, they can also be easily adapted for production use, e.g. by introducing database backups and container restarts on failure. All single services are build and hosted at [DockerHub](https://hub.docker.com/) and can be found under the namespace ***kitdm***. 

## Prerequisites

* docker (tested with 18.09.2)
* docker-compose (tested with 1.24.0-rc1)

## Building and Startup

The setup and linking of complex repository infrastructures is realized via docker-compose. In order to trigger the build process and run the setup, you only have to call e.g.:

```
user@localhost:/home/user/docker-kitdm-2.0/testbed/$ docker-compose up
[...]
user@localhost:/home/user/docker-kitdm-2.0/testbed/$
```

This will pull all images from [DockerHub](https://hub.docker.com/), apply required modifications and startup the infrastructure. 
If you apply own modifications, you may trigger a build process before running the setup again. This can be done via: 

```
user@localhost:/home/user/docker-kitdm-2.0/testbed/$ docker-compose stop
[...]
user@localhost:/home/user/docker-kitdm-2.0/testbed/$ docker-compose build
[...]
user@localhost:/home/user/docker-kitdm-2.0/testbed/$ docker-compose up
[...]
user@localhost:/home/user/docker-kitdm-2.0/testbed/$
```

If you want to remove all containers created for a certain setup, you just have to call:

```
user@localhost:/home/user/docker-kitdm-2.0/testbed/$ docker-compose rm
Going to remove admin-service, collection-api, base-repo, rabbitmq, database
Are you sure? [yN]
[...]
user@localhost:/home/user/docker-kitdm-2.0/testbed/$
```

:information_source: Keep in mind, that this will NOT remove downloaded images. :information_source: 

## License

The KIT Data Manager is licensed under the Apache License, Version 2.0.
