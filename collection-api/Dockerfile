FROM openjdk:11-stretch AS build-env-java
MAINTAINER webmaster@datamanager.kit.edu
LABEL stage=build-env

RUN apt-get update && \
    apt-get upgrade --assume-yes && \
    apt-get install --assume-yes git && \
    mkdir -p /collection-api/

FROM build-env-java AS build-collection-api
MAINTAINER webmaster@datamanager.kit.edu
LABEL stage=build-contains-sources

COPY build.sh /collection-api/

RUN sh /collection-api/build.sh

FROM openjdk:11-stretch AS run-collection-api
MAINTAINER webmaster@datamanager.kit.edu
LABEL stage=run

RUN mkdir -p /collection-api/config/
COPY --from=build-collection-api /collection-api/collection-api/build/libs/collection-api-0.1.jar /collection-api/collection-api.jar
COPY conf/application.properties /collection-api/config/application.properties
COPY run.sh /collection-api/
RUN CHMOD +x /collection-api/run.sh

EXPOSE 8080
CMD ["/collection-api/run.sh"]
