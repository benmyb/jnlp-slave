FROM jenkins/slave:latest

USER root

# Add docker client
ENV DOCKER_VERSION 18.06.1-ce
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz \
 | tar --strip-components=1 -xvzf -C /usr/local/bin

COPY kubectl /usr/local/bin/kubectl
COPY jenkins-slave /usr/local/bin/jenkins-slave

ENTRYPOINT ["jenkins-slave"]
