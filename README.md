# Jenkins slave

[`csanchez/jenkins-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-slave/)

A [Jenkins](https://jenkins-ci.org) slave using JNLP.

See [Jenkins Distributed builds](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds) for more info.

For a container with swarm plugin enabled (without opening ssh) see
[`csanchez/jenkins-swarm-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-swarm-slave/)

## Running

To run a Docker container

    docker run csanchez/jenkins-slave -jnlpUrl http://yourserver:port/computer/slave-name/slave-agent.jnlp -secret <long HEX string>

# Building

    docker build -t csanchez/jenkins-slave .
