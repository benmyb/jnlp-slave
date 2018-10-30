FROM jenkins/jnlp-slave:alpine

USER root

# Add docker client
ENV DOCKER_VERSION 18.06.1-ce
ENV KUBECTL_VERSION="v1.10.3"

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz \
 && tar --strip-components=1 -xvzf docker-$DOCKER_VERSION.tgz -C /usr/local/bin \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

COPY jenkins-slave /usr/local/bin/jenkins-slave

ENTRYPOINT ["jenkins-slave"]
