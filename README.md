# Jenkins slave

[`csanchez/jenkins-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-slave/)

A [Jenkins](https://jenkins-ci.org) slave using JNLP.

See [Jenkins Distributed builds](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds) for more info.

For a container with swarm plugin see
[`csanchez/jenkins-swarm-slave`](https://registry.hub.docker.com/u/csanchez/jenkins-swarm-slave/)

## Running

To run a Docker container

    docker run csanchez/jenkins-slave -url http://jenkins-server:port <secret> <slave name>

If the command line options are not set it will try to use environment variables,
including Kubernetes set variables for services `jenkins` and `jenkins-slave`.

* `JENKINS_URL`: url for the Jenkins server
* `JENKINS_SERVICE_HOST` and `JENKINS_SERVICE_PORT`: will be used to compose the url if the previous is not present.
* `JENKINS_TUNNEL`: (`HOST:PORT`) connect to this slave host and port instead of Jenkins server
* `JENKINS_SLAVE_SERVICE_HOST` and `JENKINS_SLAVE_SERVICE_PORT`: will be used to compose the tunnel argument if the previous is not present.


# Building

    docker build -t csanchez/jenkins-slave .
