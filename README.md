# Docker + Apache Spark + Anaconda Python
Making it easy to launch a Spark enabled Jupyter server from a Docker container

* Ubuntu 14.04
* Apache Spark 1.6.1
* Anaconda Python 2.7
* Scala 2.10.4

## Building the Docker image from the Dockerfile

### Step 1: Install Docker on your machine
Docker can be installed on Windows, OS X, or Linux.
See the [Docker install page](https://docs.docker.com/engine/installation/) for instructions.

__Note__: For OS X, docker runs inside of a light weight virtual machine with a default IP address of 192.168.100.99
To start docker on OS X, launch the Docker Quickstart Terminal after installation and perform all docker operations within that terminal.

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

If you now go to your browser and enter your Docker machine's IP and the port 8888 a Jupyter server interface should appear with an example notebook "docker_spark_example.ipynb".

Example address:

```
http://192.168.99.100:8888
```


