FROM jenkins/slave:3.26-1

USER root

# Add docker client
ENV DOCKER_VERSION 18.06.1-ce
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz \
 && tar --strip-components=1 -xvzf docker-$DOCKER_VERSION.tgz -C /usr/local/bin

COPY jenkins-slave /usr/local/bin/jenkins-slave

ENTRYPOINT ["jenkins-slave"]
