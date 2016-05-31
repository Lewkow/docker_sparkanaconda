# Docker + Apache Spark + Anaconda Python
Making it easy to launch a Spark enabled Jupyter server from a Docker container

## Building the Docker image from the Dockerfile

### Step 1: Install Docker on your machine
Docker can be installed on Windows, OS X, or Linux.
See the [Docker install page](https://docs.docker.com/engine/installation/) for instructions.

### Step 2: Clone this repository somewhere on your machine

```
$ git clone git@github.com:Lewkow/docker_sparkanaconda.git
```

### Step 3: Create Docker image using Dockerfile from repository

```
$ cd /path/to/docker_sparkanaconda
$ docker build -t sparkanaconda .
````

### Step 4: Run the newly created image in a container

```
$ ./docker_run.sh
```

***

## Using the Docker image from Docker hub
