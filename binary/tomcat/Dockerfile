FROM openjdk:11-oracle
MAINTAINER webmaster@datamanager.kit.edu

RUN mkdir -p /var/repository
RUN mkdir -p /kitdm20/base-repo/release/

COPY run.sh /kitdm20/
COPY base-repo.jar /kitdm20/base-repo/release/

COPY conf/application.properties /kitdm20/base-repo/release/config/application.properties

EXPOSE 8080
CMD ["/kitdm20/run.sh"]
