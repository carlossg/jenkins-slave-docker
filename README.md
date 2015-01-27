# Jenkins slave

[`csanchez/jenkins-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-slave/)

A [Jenkins](https://jenkins-ci.org) slave.

For a container with swarm plugin enabled (without opening ssh) see
[`csanchez/jenkins-swarm-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-swarm-slave/)

## Running

To run a Docker container

    docker run csanchez/jenkins-slave

# Building

    docker build -t csanchez/jenkins-slave .
