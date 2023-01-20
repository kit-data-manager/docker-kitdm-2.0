####################################################
# START GLOBAL DECLARATION
####################################################
ARG REPO_NAME_DEFAULT=monitoring-service
ARG REPO_PORT_DEFAULT=8060
ARG SERVICE_ROOT_DIRECTORY_DEFAULT=/opt
####################################################
# END GLOBAL DECLARATION
####################################################

####################################################
# Runtime environment 4 monitoring-servoce
####################################################
FROM openjdk:16-bullseye AS run-service-base-repo
LABEL maintainer=webmaster@datamanager.kit.edu
LABEL stage=run

# Fetch arguments from above
ARG REPO_NAME_DEFAULT
ARG REPO_PORT_DEFAULT
ARG SERVICE_ROOT_DIRECTORY_DEFAULT

# Declare environment variables
ENV REPO_NAME=${REPO_NAME_DEFAULT}
ENV SERVICE_DIRECTORY=${SERVICE_ROOT_DIRECTORY_DEFAULT}/${REPO_NAME}
ENV REPO_PORT=${REPO_PORT_DEFAULT}

# Install bash as additional requirement
RUN apt-get -y update && \
    apt-get -y upgrade  && \
    apt-get install -y --no-install-recommends bash && \
    apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy service from build container
WORKDIR ${SERVICE_DIRECTORY}

# Define repo port 
EXPOSE ${REPO_PORT}
ENTRYPOINT ["bash", "./run.sh"]