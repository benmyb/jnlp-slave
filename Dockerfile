FROM jenkins/slave:3.26-1-alpine

COPY jenkins-slave /usr/local/bin/jenkins-slave

ENTRYPOINT ["jenkins-slave"]
