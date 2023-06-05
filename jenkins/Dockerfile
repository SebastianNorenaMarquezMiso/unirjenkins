FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    software-properties-common \
    ansible \
    python3-pip \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip \
    && pip3 install awscli --upgrade --user

RUN groupadd -g 999 docker \
    && usermod -aG docker jenkins

USER jenkins

VOLUME /var/run/docker.sock

EXPOSE 8080
