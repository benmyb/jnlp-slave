# sbt+scala docker #

## build ##

```
docker build -t sbt-scala:1.0-scala-2.11.12-sbt-1.1.2 --build-arg SCALA_VERSION=2.11.12 --build-arg SBT_VERSION=1.1.2 .
```

## Usage ##

```
docker run -it --rm hseeberger/scala-sbt
```

