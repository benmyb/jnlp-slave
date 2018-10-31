# Jenkins Agent Docker image

## Usage

This image is used as the basis for the [Docker JNLP Agent](https://github.com/jenkinsci/docker-jnlp-slave/) image.
In that image, the container is launched externally and attaches to Jenkins.

This image may instead be used to launch an agent using the **Launch method** of **Launch agent via execution of command on the master**. Try for example

```sh
docker run -i --rm --name agent --init jenkinsci/slave:3.7-1 java -jar /usr/share/jenkins/slave.jar
```

after setting **Remote root directory** to `/home/jenkins/agent`.

### Agent Work Directories

Starting from [Remoting 3.8](https://github.com/jenkinsci/remoting/blob/master/CHANGELOG.md#38) there is a support of Work directories, 
which provides logging by default and change the JAR Caching behavior.

Call example:

```sh
docker run -i --rm --name agent1 --init -v agent1-workdir:/home/jenkins/agent jenkinsci/slave:3.10-1 java -jar /usr/share/jenkins/slave.jar -workDir /home/jenkins/agent
```
